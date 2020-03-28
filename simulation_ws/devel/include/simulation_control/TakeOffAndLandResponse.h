// Generated by gencpp from file simulation_control/TakeOffAndLandResponse.msg
// DO NOT EDIT!


#ifndef SIMULATION_CONTROL_MESSAGE_TAKEOFFANDLANDRESPONSE_H
#define SIMULATION_CONTROL_MESSAGE_TAKEOFFANDLANDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace simulation_control
{
template <class ContainerAllocator>
struct TakeOffAndLandResponse_
{
  typedef TakeOffAndLandResponse_<ContainerAllocator> Type;

  TakeOffAndLandResponse_()
    {
    }
  TakeOffAndLandResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TakeOffAndLandResponse_

typedef ::simulation_control::TakeOffAndLandResponse_<std::allocator<void> > TakeOffAndLandResponse;

typedef boost::shared_ptr< ::simulation_control::TakeOffAndLandResponse > TakeOffAndLandResponsePtr;
typedef boost::shared_ptr< ::simulation_control::TakeOffAndLandResponse const> TakeOffAndLandResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simulation_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulation_control/TakeOffAndLandResponse";
  }

  static const char* value(const ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
";
  }

  static const char* value(const ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TakeOffAndLandResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::simulation_control::TakeOffAndLandResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATION_CONTROL_MESSAGE_TAKEOFFANDLANDRESPONSE_H