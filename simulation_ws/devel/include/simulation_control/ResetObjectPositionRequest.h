// Generated by gencpp from file simulation_control/ResetObjectPositionRequest.msg
// DO NOT EDIT!


#ifndef SIMULATION_CONTROL_MESSAGE_RESETOBJECTPOSITIONREQUEST_H
#define SIMULATION_CONTROL_MESSAGE_RESETOBJECTPOSITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace simulation_control
{
template <class ContainerAllocator>
struct ResetObjectPositionRequest_
{
  typedef ResetObjectPositionRequest_<ContainerAllocator> Type;

  ResetObjectPositionRequest_()
    : model_name()
    , position()
    , orientation()
    , random_position(false)  {
    }
  ResetObjectPositionRequest_(const ContainerAllocator& _alloc)
    : model_name(_alloc)
    , position(_alloc)
    , orientation(_alloc)
    , random_position(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _model_name_type;
  _model_name_type model_name;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _orientation_type;
  _orientation_type orientation;

   typedef uint8_t _random_position_type;
  _random_position_type random_position;





  typedef boost::shared_ptr< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ResetObjectPositionRequest_

typedef ::simulation_control::ResetObjectPositionRequest_<std::allocator<void> > ResetObjectPositionRequest;

typedef boost::shared_ptr< ::simulation_control::ResetObjectPositionRequest > ResetObjectPositionRequestPtr;
typedef boost::shared_ptr< ::simulation_control::ResetObjectPositionRequest const> ResetObjectPositionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ba24c1c438c0997f8787a3743a4a600";
  }

  static const char* value(const ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ba24c1c438c0997ULL;
  static const uint64_t static_value2 = 0xf8787a3743a4a600ULL;
};

template<class ContainerAllocator>
struct DataType< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulation_control/ResetObjectPositionRequest";
  }

  static const char* value(const ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
\n\
\n\
\n\
string model_name\n\
geometry_msgs/Vector3 position\n\
geometry_msgs/Vector3 orientation\n\
bool random_position\n\
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

  static const char* value(const ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.model_name);
      stream.next(m.position);
      stream.next(m.orientation);
      stream.next(m.random_position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ResetObjectPositionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulation_control::ResetObjectPositionRequest_<ContainerAllocator>& v)
  {
    s << indent << "model_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.model_name);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "orientation: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
    s << indent << "random_position: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.random_position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATION_CONTROL_MESSAGE_RESETOBJECTPOSITIONREQUEST_H
