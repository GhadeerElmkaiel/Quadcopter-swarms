// Generated by gencpp from file simulation_control/SimTakeOffAndLandRequest.msg
// DO NOT EDIT!


#ifndef SIMULATION_CONTROL_MESSAGE_SIMTAKEOFFANDLANDREQUEST_H
#define SIMULATION_CONTROL_MESSAGE_SIMTAKEOFFANDLANDREQUEST_H


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
struct SimTakeOffAndLandRequest_
{
  typedef SimTakeOffAndLandRequest_<ContainerAllocator> Type;

  SimTakeOffAndLandRequest_()
    : models_prefixs()  {
    }
  SimTakeOffAndLandRequest_(const ContainerAllocator& _alloc)
    : models_prefixs(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _models_prefixs_type;
  _models_prefixs_type models_prefixs;





  typedef boost::shared_ptr< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SimTakeOffAndLandRequest_

typedef ::simulation_control::SimTakeOffAndLandRequest_<std::allocator<void> > SimTakeOffAndLandRequest;

typedef boost::shared_ptr< ::simulation_control::SimTakeOffAndLandRequest > SimTakeOffAndLandRequestPtr;
typedef boost::shared_ptr< ::simulation_control::SimTakeOffAndLandRequest const> SimTakeOffAndLandRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "05a98b9b216be82ed5a9ff071217958d";
  }

  static const char* value(const ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x05a98b9b216be82eULL;
  static const uint64_t static_value2 = 0xd5a9ff071217958dULL;
};

template<class ContainerAllocator>
struct DataType< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulation_control/SimTakeOffAndLandRequest";
  }

  static const char* value(const ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] models_prefixs\n\
";
  }

  static const char* value(const ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.models_prefixs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SimTakeOffAndLandRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulation_control::SimTakeOffAndLandRequest_<ContainerAllocator>& v)
  {
    s << indent << "models_prefixs[]" << std::endl;
    for (size_t i = 0; i < v.models_prefixs.size(); ++i)
    {
      s << indent << "  models_prefixs[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.models_prefixs[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATION_CONTROL_MESSAGE_SIMTAKEOFFANDLANDREQUEST_H