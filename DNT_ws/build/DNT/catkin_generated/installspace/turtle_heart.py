import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
from pid import PID

def draw_heart():
    rospy.init_node('draw_heart', anonymous=True)
    pub = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size=10)

    # Set the turtle's starting position and orientation
    starting_pose = Pose()
    starting_pose.x = 5.0
    starting_pose.y = 5.0
    starting_pose.theta = 0.0
    pub.publish(starting_pose)

    # Define the heart shape as a series of waypoints
    waypoints = [[5.0,5.0], [5.0,8.0], [3.0,9.0], [3.0,10.0], [5.0,11.0], [7.0,10.0], [7.0,9.0], [5.0,8.0], [5.0,5.0]]

    # Create a PID controller for the turtle's x and y position
    pid_x = PID(0.1, 0.01, 0.05)
    pid_y = PID(0.1, 0.01, 0.05)

    rate = rospy.Rate(10) # 10 Hz
    for waypoint in waypoints:
        # Get the current position of the turtle
        pose = rospy.wait_for_message('turtle1/pose', Pose)
        current_x = pose.x
        current_y = pose.y

        # Use the PID controllers to calculate the linear velocity needed to reach the waypoint
        vel_x = pid_x.compute_output(waypoint[0], current_x)
        vel_y = pid_y.compute_output(waypoint[1], current_y)

        # Create a Twist message to send the turtle to the next waypoint
        twist = Twist()
        twist.linear.x = vel_x
        twist.linear.y = vel_y
        pub.publish(twist)
        rate.sleep()

if __name__ == '__main__':
    try:
        draw_heart()
    except rospy.ROSInterruptException:
        pass
