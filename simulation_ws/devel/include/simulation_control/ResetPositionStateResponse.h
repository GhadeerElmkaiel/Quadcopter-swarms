// Generated by gencpp from file simulation_control/ResetPositionStateResponse.msg
// DO NOT EDIT!


#ifndef SIMULATION_CONTROL_MESSAGE_RESETPOSITIONSTATERESPONSE_H
#define SIMULATION_CONTROL_MESSAGE_RESETPOSITIONSTATERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Odometry.h>

namespace simulation_control
{
template <class ContainerAllocator>
struct ResetPositionStateResponse_
{
  typedef ResetPositionStateResponse_<ContainerAllocator> Type;

  ResetPositionStateResponse_()
    : new_state()  {
    }
  ResetPositionStateResponse_(const ContainerAllocator& _alloc)
    : new_state(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::Odometry_<ContainerAllocator>  _new_state_type;
  _new_state_type new_state;





  typedef boost::shared_ptr< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ResetPositionStateResponse_

typedef ::simulation_control::ResetPositionStateResponse_<std::allocator<void> > ResetPositionStateResponse;

typedef boost::shared_ptr< ::simulation_control::ResetPositionStateResponse > ResetPositionStateResponsePtr;
typedef boost::shared_ptr< ::simulation_control::ResetPositionStateResponse const> ResetPositionStateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simulation_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "06191ccf4c0ff846918c1ffc4c789d42";
  }

  static const char* value(const ::simulation_control::ResetPositionStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x06191ccf4c0ff846ULL;
  static const uint64_t static_value2 = 0x918c1ffc4c789d42ULL;
};

template<class ContainerAllocator>
struct DataType< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulation_control/ResetPositionStateResponse";
  }

  static const char* value(const ::simulation_control::ResetPositionStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav_msgs/Odometry new_state\n\
\n\
\n\
================================================================================\n\
MSG: nav_msgs/Odometry\n\
# This represents an estimate of a position and velocity in free space.  \n\
# The pose in this message should be specified in the coordinate frame given by header.frame_id.\n\
# The twist in this message should be specified in the coordinate frame given by the child_frame_id\n\
Header header\n\
string child_frame_id\n\
geometry_msgs/PoseWithCovariance pose\n\
geometry_msgs/TwistWithCovariance twist\n\
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
MSG: geometry_msgs/PoseWithCovariance\n\
# This represents a pose in free space with uncertainty.\n\
\n\
Pose pose\n\
\n\
# Row-major representation of the 6x6 covariance matrix\n\
# The orientation parameters use a fixed-axis representation.\n\
# In order, the parameters are:\n\
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n\
float64[36] covariance\n\
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
MSG: geometry_msgs/TwistWithCovariance\n\
# This expresses velocity in free space with uncertainty.\n\
\n\
Twist twist\n\
\n\
# Row-major representation of the 6x6 covariance matrix\n\
# The orientation parameters use a fixed-axis representation.\n\
# In order, the parameters are:\n\
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n\
float64[36] covariance\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
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

  static const char* value(const ::simulation_control::ResetPositionStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.new_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ResetPositionStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulation_control::ResetPositionStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulation_control::ResetPositionStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "new_state: ";
    s << std::endl;
    Printer< ::nav_msgs::Odometry_<ContainerAllocator> >::stream(s, indent + "  ", v.new_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATION_CONTROL_MESSAGE_RESETPOSITIONSTATERESPONSE_H