# !/usr/bin/env python3
import rospy,math,time
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import matplotlib.pyplot as plt
from numpy import cos,sin,arctan,linspace
import numpy as np
from turtlesim.srv import Spawn,Kill

def remove_turtle(name):
    rospy.wait_for_service("/kill")
    try:
        remove_turtle_proxy = rospy.ServiceProxy("/kill", Kill)
        remove_turtle_proxy(name)
    except rospy.ServiceException as e:
        print("Service call failed:", e)
def spawn_turtle(x, y, theta, name):
    rospy.wait_for_service("/spawn")
    try:
        spawn_turtle_proxy = rospy.ServiceProxy("/spawn", Spawn)
        spawn_turtle_proxy(x, y, theta, name)
    except rospy.ServiceException as e:
        rospy.loginfo("Service call failed:", e)

def add_gaussian_noise(data, mean=0, std=1):
    noise = np.random.normal(mean, std, data.shape)
    noisy_data = data + noise
    return noisy_data
def pose_callback_2(pose_msg):
    posep.x= pose_msg.x
    posep.y = pose_msg.y
    posep.theta = pose_msg.theta
def pose_callback(pose_msg):
    pose.x= pose_msg.x
    pose.y = pose_msg.y
    pose.theta = pose_msg.theta
def turtle_circle(pub1,pub2,pub3,radius):
    x0 = pose.x
    y0 = pose.y
    msg = Twist()
    kp=0.5
    noisy = Pose()
    while 1:
        error = math.sqrt(((x0-pose.x)**2)+((pose.y-y0)**2))
        msg.angular.z= 2
        msg.linear.x = radius
        pub1.publish(msg)
        data = np.array([pose.x,pose.y,pose.theta])
        noisy.x, noisy.y,noisy.theta = tuple(add_gaussian_noise(data,0,10))
        rospy.sleep(5)
        pub2.publish(pose)
        pub3.publish(noisy)
        # if error < 0.01:
            # break

if __name__=="__main__":
    try:
        rospy.init_node("__Chase__",anonymous=True)
        remove_turtle("turtle1")
        spawn_turtle(5.5445, 5.54445, 0.0, "turtle1")
        spawn_turtle(8.0, 8.0, 0.0, "turtle2")
        robber_pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)
        robber_sub= rospy.Subscriber("/turtle1/pose",Pose,pose_callback)

        pub_2 = rospy.Publisher("/rt_real_pose",Pose,queue_size=10)
        pub_3 = rospy.Publisher("/rt_noisy_pose",Pose,queue_size=10)

        
        subp = rospy.Subscriber("/turtle2/pose",Pose,pose_callback_2)
        global pose,posep
        pose = Pose()
        posep = Pose()
        rospy.sleep(1)
        turtle_circle(robber_pub,pub_2,pub_3,4)
        
    except rospy.ROSInterruptException:
        rospy.loginfo("node terminated")