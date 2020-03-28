#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Path.h"
#include "math.h"

//#include "std_msgs"

#define PI 3.14159
#define QUAD_HEIGHT 0.182

geometry_msgs::PoseStamped pose;
geometry_msgs::Point pnt;
geometry_msgs::Quaternion orientation;
geometry_msgs::Twist twist;

double position [4]= {0, 0, 0, 0};

float points [6][3]={{0, 0, 0.2+QUAD_HEIGHT},{1, 1, 0.2+QUAD_HEIGHT},{-1, 1, 0.2+QUAD_HEIGHT},{-1, -1, 0.2+QUAD_HEIGHT},{1, -1, 0.2+QUAD_HEIGHT},{1, 1, 0.2+QUAD_HEIGHT}};
float goal[4] = {0, 0, 0.8, 0};
float tolerance = 0.05;

double integral [4]={0, 0, 0, 0};
double err [4]={0, 0, 0, 0};
double prev_err [4]={0, 0, 0, 0};
double def [4]={0, 0, 0, 0};
double kp [4]={0.5, 0.5, 0.5, 0.5};
double kd [4]={0.0001, 0.0001, 0.0001, 0.0001};
double ki [4]={0.002, 0.002, 0.002, 0.002};
double max_value[4]={0.5, 0.5, 0.5, 0.5};
double min_value[4]={-0.5, -0.5, -0.5, -0.5};
double action [4]={0, 0, 0, 0};

float rise = 1;

bool must_exit = false;
bool nonstop = true;
int point_id =0;

/*
double Int= 0;
double Err= 0;
double Err_l = 0;
double Def= 0;
double P= 2;
double D= 0.07;
double I= 0.1;
*/

double MAX_SPEED = 0.8;
int LOOP_RATE = 4;


void PID(double position[4]){
	double val;
	int i =0;
	for(i=0; i<4; i++){
		prev_err[i] = err[i];
		err[i] = goal[i] - position[i];
		// Adding rise for z
		if(i==2){
			err[i] = (goal[i] +0.001*rise) - position[i];
		}
		integral[i] += err[i];
		def[i] = (err[i]-prev_err[i])*LOOP_RATE;
		action[i] = kp[i]*err[i] + ki[i]*integral[i] + kd[i]*def[i];
		if(action[i] > max_value[i])
			action[i] = max_value[i];
		if(action[i] < min_value[i])
			action[i] = min_value[i];
		
	}
	twist.linear.x = action[0];
	twist.linear.y = action[1];
	twist.linear.z = action[2];
	twist.angular.z = action[3];
	
	/*
	Err_l = Err;
	Err = err;
	Int += Err;
	Def = (Err_l-Err)*LOOP_RATE;
	val = Err*P+Int*I+Def*D;
	if(err > 0)
		val = MAX_SPEED;
	else
		val = -1*MAX_SPEED;
	*/
}


void clbk(const nav_msgs::Path msg)
{
	std_msgs::Header h;
	h =msg.header;
	pose = msg.poses[h.seq];
	pnt = pose.pose.position;
	orientation = pose.pose.orientation;
	// Changing the goal point
	goal[0] = points[point_id][0];
	goal[1] = points[point_id][1];
	goal[2] = points[point_id][2];

	position[0] = pnt.x;
	position[1] = pnt.y;
	position[2] = pnt.z;
	position[3] = orientation.z;
	PID(position);
	if((fabs(err[0])< tolerance) && (fabs(err[1])< tolerance) && (fabs(err[2])< tolerance)){
		if(must_exit == true){
			twist.linear.x = 0;
			twist.linear.y = 0;
			twist.linear.z = 0;
			twist.angular.z = 0;
		}
		else{
			point_id +=1;
			rise +=5;
		}
	}
	if(point_id == (sizeof(points)/(sizeof(points[0])))){
		if(nonstop){
			point_id=1;
		}
		else{
			point_id=0;
			must_exit=true;
		}
	}
}


int main(int argc, char **argv)
{
	ros::init(argc, argv, "takeoff");
	ros::NodeHandle np;
	ros::NodeHandle ns;
	ros::Publisher pub = np.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
	ros::Subscriber sub = ns.subscribe("/trajectory", 1, clbk);
	ros::Rate loop_rate(LOOP_RATE); 
	
	int i = 0;
	while(ros::ok())
	{
	
		ROS_INFO("Position x=%.3f, y=%.3f, z=%.3f", pnt.x, pnt.y, pnt.z);
		ROS_INFO("Error in x=%.3f, y=%.3f, z=%.3f", err[0], err[1], err[2]);
		pub.publish(twist);
		ros::spinOnce();
		loop_rate.sleep();
		i++;
	}

	return 0;
}
