// Generated by gencpp from file rl_model/GetQuadcopterDataResponse.msg
// DO NOT EDIT!


#ifndef RL_MODEL_MESSAGE_GETQUADCOPTERDATARESPONSE_H
#define RL_MODEL_MESSAGE_GETQUADCOPTERDATARESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <sensor_msgs/Imu.h>
#include <geometry_msgs/Vector3.h>

namespace rl_model
{
template <class ContainerAllocator>
struct GetQuadcopterDataResponse_
{
  typedef GetQuadcopterDataResponse_<ContainerAllocator> Type;

  GetQuadcopterDataResponse_()
    : state()
    , imu()
    , magnetic()
    , sonar(0.0)  {
    }
  GetQuadcopterDataResponse_(const ContainerAllocator& _alloc)
    : state(_alloc)
    , imu(_alloc)
    , magnetic(_alloc)
    , sonar(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _state_type;
  _state_type state;

   typedef  ::sensor_msgs::Imu_<ContainerAllocator>  _imu_type;
  _imu_type imu;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _magnetic_type;
  _magnetic_type magnetic;

   typedef float _sonar_type;
  _sonar_type sonar;





  typedef boost::shared_ptr< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetQuadcopterDataResponse_

typedef ::rl_model::GetQuadcopterDataResponse_<std::allocator<void> > GetQuadcopterDataResponse;

typedef boost::shared_ptr< ::rl_model::GetQuadcopterDataResponse > GetQuadcopterDataResponsePtr;
typedef boost::shared_ptr< ::rl_model::GetQuadcopterDataResponse const> GetQuadcopterDataResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rl_model

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "11c48fac5a9fde0bc6a969a66522b5e4";
  }

  static const char* value(const ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x11c48fac5a9fde0bULL;
  static const uint64_t static_value2 = 0xc6a969a66522b5e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rl_model/GetQuadcopterDataResponse";
  }

  static const char* value(const ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose state\n\
sensor_msgs/Imu imu\n\
geometry_msgs/Vector3 magnetic\n\
float32 sonar\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: sensor_msgs/Imu\n\
# This is a message to hold data from an IMU (Inertial Measurement Unit)\n\
#\n\
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec\n\
#\n\
# If the covariance of the measurement is known, it should be filled in (if all you know is the \n\
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)\n\
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the\n\
# data a covariance will have to be assumed or gotten from some other source\n\
#\n\
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation \n\
# estimate), please set element 0 of the associated covariance matrix to -1\n\
# If you are interpreting this message, please check for a value of -1 in the first element of each \n\
# covariance matrix, and disregard the associated estimate.\n\
\n\
Header header\n\
\n\
geometry_msgs/Quaternion orientation\n\
float64[9] orientation_covariance # Row major about x, y, z axes\n\
\n\
geometry_msgs/Vector3 angular_velocity\n\
float64[9] angular_velocity_covariance # Row major about x, y, z axes\n\
\n\
geometry_msgs/Vector3 linear_acceleration\n\
float64[9] linear_acceleration_covariance # Row major x, y z \n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.imu);
      stream.next(m.magnetic);
      stream.next(m.sonar);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetQuadcopterDataResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rl_model::GetQuadcopterDataResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.state);
    s << indent << "imu: ";
    s << std::endl;
    Printer< ::sensor_msgs::Imu_<ContainerAllocator> >::stream(s, indent + "  ", v.imu);
    s << indent << "magnetic: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.magnetic);
    s << indent << "sonar: ";
    Printer<float>::stream(s, indent + "  ", v.sonar);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RL_MODEL_MESSAGE_GETQUADCOPTERDATARESPONSE_H
