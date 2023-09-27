# !/usr/bin/env python3
import rospy,math,time
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import matplotlib.pyplot as plt
from numpy import cos,sin,arctan,linspace

def pose_callback(pose_msg):
    pose.x= pose_msg.x
    pose.y = pose_msg.y
    pose.theta = pose_msg.theta
def turtle_circle(pub1,pub2,radius):
    x0 = pose.x
    y0 = pose.y
    msg = Twist()
    kp=0.5
    while 1:
        error = math.sqrt(((x0-pose.x)**2)+((pose.y-y0)**2))
        msg.angular.z=radius
        msg.linear.x = error*kp
        pub1.publish(msg)
        rospy.sleep(5)
        pub2.publish(pose)
        if error < 0.01:
            break

if __name__=="__main__":
    try:
        rospy.init_node("Motion_pose",anonymous=True)
        pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)
        pub_2 = rospy.Publisher("/rt_real_pose",Pose,queue_size=10)
        sub = rospy.Subscriber("/turtle1/pose",Pose,pose_callback)
        global pose,yaw
        pose = Pose()
    except rospy.ROSInterruptException:
        rospy.loginfo("node terminated")