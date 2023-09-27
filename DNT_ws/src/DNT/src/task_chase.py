# !/usr/bin/env python3
import rospy,math,time
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import matplotlib.pyplot as plt
from numpy import cos,sin,arctan,linspace
import numpy as np
from turtlesim.srv import Spawn,Kill
from random import randint
####################################################################################
def remove_turtle(name):
    '''To remove a turtle from the window'''
    rospy.wait_for_service("/kill")
    try:
        remove_turtle_proxy = rospy.ServiceProxy("/kill", Kill)
        remove_turtle_proxy(name)
    except rospy.ServiceException as e:
        print("Service call failed:", e)

def spawn_turtle(x, y, theta, name):
    '''To Spawn turtle at a given location'''
    rospy.wait_for_service("/spawn")
    try:
        spawn_turtle_proxy = rospy.ServiceProxy("/spawn", Spawn)
        spawn_turtle_proxy(x, y, theta, name)
    except rospy.ServiceException as e:
        rospy.loginfo("Service call failed:", e)


def add_gaussian_noise(data, mean=0, std=1):
    '''Aims to add noisy to the data provided'''
    noise = np.random.normal(mean, std, data.shape)
    noisy_data = data + noise
    return noisy_data

def pose_callback_2(pose_msg):
    '''Handling pose data of the police turtle'''
    pose_police.x= pose_msg.x
    pose_police.y = pose_msg.y
    pose_police.theta = pose_msg.theta

def pose_callback(pose_msg):
    '''Handling pose data of the Robber turtle'''
    pose_robber.x= pose_msg.x
    pose_robber.y = pose_msg.y
    pose_robber.theta = pose_msg.theta
def target_callback(pose_msg):
    '''Set the target for the police to chase the robber'''
    chase_target.x= pose_msg.x
    chase_target.y= pose_msg.y
    chase_target.theta =pose_msg.theta
    # if chase_target.x > 11.8 or chase_target.x<-1 or chase_target.y<-1 or chase_target.y>11.8:
    #     chase_target.x=0
    #     chase_target.y=0
    #     chase_target.theta=0


def safe_distance():
    dist = np.sqrt((pose_robber.x - pose_police.x)**2 + (pose_robber.y - pose_police.y))
    return dist
###########################################################################################

if __name__=="__main__":
    try:
        global pose_robber,pose_police,chase_target
        pose_robber = Pose()
        pose_police = Pose()
        chase_target = Pose()
        rospy.init_node("__Chase__",anonymous=True)
        remove_turtle("turtle1")
        
        #############################Robber_turtle############################
        
        spawn_turtle(5,1, 0.0, "turtle1")
        robber_pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)
        robber_sub= rospy.Subscriber("/turtle1/pose",Pose,pose_callback)
        robber_msg = Twist()
        ####################################################################
        pub_2 = rospy.Publisher("/rt_real_pose",Pose,queue_size=10)
        pub_2.publish(pose_robber)
        pub_3 = rospy.Publisher("/rt_noisy_pose",Pose,queue_size=10)
        noisy_pose = Pose()
        #####################################################################
        rospy.sleep(10)
        ##########################Police_turtle############################
        spawn_x,spawn_y = randint(1,8),randint(0,11)
        spawn_turtle(spawn_x, spawn_y, 0.0, "turtle2")
        police_sub= rospy.Subscriber("/turtle2/pose",Pose,pose_callback_2)
        police_pub = rospy.Publisher("/turtle2/cmd_vel",Twist,queue_size=10)
        police_msg = Twist()
        ################################################
        
        ################################################
        
        while True:
            robber_msg.linear.x=5
            robber_msg.angular.z = 2.1511
            robber_pub.publish(robber_msg)
            pub_2.publish(pose_robber)
            noisy_pose.x = add_gaussian_noise(np.array((pose_robber.x)),0,10)
            noisy_pose.y = add_gaussian_noise(np.array((pose_robber.y)),0.10)
            pub_3.publish(noisy_pose)
            ################
            rospy.sleep(5)
            robber_posn_sub = rospy.Subscriber("/rt_noisy_pose",Pose,target_callback)
            ##################
            loop_rate = rospy.Rate(10)
            kplinear = 0.5
            kpangular = 1
            kdlinear = 1e-08
            kdangular = 2e-08
            kilinear= 1e-10
            kiangular= 1e-10
            integrald,integrala = 0,0
            prior_dist =0.0
            prior_angle = 0
            t= rospy.Time.now().to_sec()
            ####################
            iteration_time = rospy.Time.now().to_sec() -t

            distance  = math.sqrt(((chase_target.x-pose_police.x)**2)+((chase_target.y-pose_police.y)**2))
            integraldd = (distance * iteration_time) + integrald 

            speedl = abs(distance)*kplinear + abs((distance-prior_dist)/iteration_time)*kdlinear +integraldd*kilinear
            
            desired_ang=  math.atan2(chase_target.y-pose_police.y,chase_target.x-pose_police.x)
            angle_torot=desired_ang-pose_police.theta
            integralaa = angle_torot*iteration_time +integrala
            speeda = (angle_torot)*kpangular  +((angle_torot-prior_angle)/iteration_time)*kdangular + integralaa*kiangular

            police_msg.angular.z=speeda
            police_msg.linear.x= speedl
            print('linear speed:',speedl," Angular speed: ",speeda)
            prior_dist = distance
            prior_angle = angle_torot
            integrald = integraldd
            police_pub.publish(police_msg)
            #plt.plot(distance,iteration_time)
            #plt.show()
            rospy.sleep(1)
            chk = safe_distance()
            if (chk<3)   :
                rospy.loginfo('Chase Over')
                break
        
    except rospy.ROSInterruptException:
        rospy.loginfo("node terminated")