# !/usr/bin/env python3
import rospy,math,time
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import matplotlib.pyplot as plt
from numpy import cos,sin,arctan,linspace

def move(obj,speed,dist,forward):
    message_obj = Twist()
    x0,y0 =pose.x,pose.y
    if forward:
        speed = abs(speed)
    else :
        speed = -abs(speed)
    kdlinear = 0.5
    kplinear=0.5
    prior_dist=0.0
    loop_rate = rospy.Rate(10)
    t= rospy.Time.now().to_sec()
    rospy.sleep(1)
    while(True):
        iteration_time= rospy.Time.now().to_sec() -t
        distance_covered = math.sqrt(((x0-pose.x)**2)+((pose.y-y0)**2))
        error=dist-distance_covered
        message_obj.linear.x= (error)*kplinear + ((error - prior_dist)/(iteration_time))*kdlinear
        obj.publish(message_obj)
        prior_dist = dist-distance_covered
        if(error<0.01):
            rospy.loginfo("Reached")
            break
    message_obj.linear.x=0.0
    obj.publish(message_obj)

def pose_callback(pose_msg):
    pose.x= pose_msg.x
    pose.y = pose_msg.y
    pose.theta = pose_msg.theta

def go_to_goal(obj,x_goal,y_goal):
    message = Twist()
    loop_rate = rospy.Rate(10)
    kplinear = 0.5
    kpangular = 1
    kdlinear = 0.000000000000001
    kdangular = 0.00000000002
    kilinear=0.00000000000000000001
    kiangular=0.00000000000000000002
    integrald,integrala = 0,0
    prior_dist =0.0
    prior_angle = 0
    t= rospy.Time.now().to_sec()
    while 1:
        iteration_time = rospy.Time.now().to_sec() -t

        distance  = math.sqrt(((x_goal-pose.x)**2)+((pose.y-y_goal)**2))
        integraldd = (distance * iteration_time) + integrald 

        speedl = abs(distance)*kplinear + abs((distance-prior_dist)/iteration_time)*kdlinear +integraldd*kilinear
        
        desired_ang=  math.atan2(y_goal-pose.y,x_goal-pose.x)
        angle_torot=desired_ang-pose.theta
        integralaa = angle_torot*iteration_time +integrala
        speeda = (angle_torot)*kpangular  +((angle_torot-prior_angle)/iteration_time)*kdangular + integralaa*kiangular

        message.angular.z=speeda
        message.linear.x= speedl
        print('linear speed:',speedl," Angular speed: ",speeda)
        prior_dist = distance
        prior_angle = angle_torot
        integrald = integraldd
        obj.publish(message)
        #plt.plot(distance,iteration_time)
        #plt.show()
        rospy.sleep(1)
        if distance < 0.1:
            rospy.loginfo("Reached the goal")
            break

def turtle_twist(obj,angl_speed_deg,relative_angle,clock):
    message = Twist()
    speed = abs(math.radians(angl_speed_deg))
    if(clock):
        message.angular.z = speed
    else:
        message.angular.z = (-1)*speed
    loop_rate =rospy.Rate(10)
    t0 = rospy.Time.now().to_sec()
    while(True):
        obj.publish(message)
        t1 = rospy.Time.now().to_sec()
        curr_angle = (t1-t0)*angl_speed_deg
        if (relative_angle- curr_angle)<0.01:
            print("Posn reached")
            break
    message.angular.z = 0
    obj.publish(message)

def orientation(obj,speed_deg, rotate):
    relative = math.radians(rotate) - pose.theta
    if relative <0:
        clock = 0
    else:
        clock =1
    turtle_twist(obj,speed_deg,math.degrees(abs(relative)),clock)

def spiral(obj ,r,t):
    mesg = Twist()
    loop_rate = rospy.Rate(1)
    while (x<10.5 and y<10.5):
        mesg.linear.x = r
        mesg.linear.y=0
        mesg.linear.z=0
        mesg.angular.x=0
        mesg.angular.y =0
        mesg.angular.z = t
        r+=1
        obj.publish(mesg)
        loop_rate.sleep()
    mesg.linear.x =0
    mesg.angular.z=0
    obj.publish(mesg)

def turtle_clean(obj):
    msg = Pose()
    msg.x = 1
    msg.y = 1
    msg.theta = 0
    go_to_goal(obj,1,1)
    val = True
    orientation(obj,30,math.radians(msg.theta))
    for i  in range(6):
        move(obj,5,8,1)
        turtle_twist(obj,30,90,val)
        move(obj,5,1,1)
        turtle_twist(obj,30,90,val)
        val = not val
def turtle_square(obj):
    msg = Pose()
    go_to_goal(obj,5,4)
    orientation(obj,30,math.radians(msg.theta))
    for i  in range(4):
        move(obj,10,3,1)
        turtle_twist(obj,30,90,1)

def turtle_heart(obj,radius):
        x_=[]
        y_=[]
        for t in linspace(-2*3.14,2*3.14,100):
            x = 16*sin(t)*sin(t)*sin(t)*0.2 + 5.544445
            y = (15*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t))*0.2 + 5.544445 - 0.700025
            x_ .append(x)
            y_.append(y)
            go_to_goal(obj,x,y)
        plt.plot(x_,y_)
        plt.show()

                

if __name__=="__main__":
    try:
        rospy.init_node("Motion_pose",anonymous=True)
        pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)
        sub = rospy.Subscriber("/turtle1/pose",Pose,pose_callback)
        global pose,yaw
        pose = Pose()
        time.sleep(2)
        turtle_clean(pub)
        #move(pub,10,4,1)
        #go_to_goal(pub,1,1)
        #orientation(pub,3000,36000)
        #spiral(pub,10,10)
        #turtle_square(pub)
        #turtle_arc(pub)
        #turtle_heart(pub,5)
    except rospy.ROSInterruptException:
        rospy.loginfo("node terminated")


        


    