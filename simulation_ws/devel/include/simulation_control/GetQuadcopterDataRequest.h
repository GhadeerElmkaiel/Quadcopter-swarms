// Generated by gencpp from file simulation_control/GetQuadcopterDataRequest.msg
// DO NOT EDIT!


#ifndef SIMULATION_CONTROL_MESSAGE_GETQUADCOPTERDATAREQUEST_H
#define SIMULATION_CONTROL_MESSAGE_GETQUADCOPTERDATAREQUEST_H


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
struct GetQuadcopterDataRequest_
{
  typedef GetQuadcopterDataRequest_<ContainerAllocator> Type;

  GetQuadcopterDataRequest_()
    : quadcopter_name()  {
    }
  GetQuadcopterDataRequest_(const ContainerAllocator& _alloc)
    : quadcopter_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _quadcopter_name_type;
  _quadcopter_name_type quadcopter_name;





  typedef boost::shared_ptr< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetQuadcopterDataRequest_

typedef ::simulation_control::GetQuadcopterDataRequest_<std::allocator<void> > GetQuadcopterDataRequest;

typedef boost::shared_ptr< ::simulation_control::GetQuadcopterDataRequest > GetQuadcopterDataRequestPtr;
typedef boost::shared_ptr< ::simulation_control::GetQuadcopterDataRequest const> GetQuadcopterDataRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "feef7da8de7a859f1c884d77c36bb7e4";
  }

  static const char* value(const ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfeef7da8de7a859fULL;
  static const uint64_t static_value2 = 0x1c884d77c36bb7e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulation_control/GetQuadcopterDataRequest";
  }

  static const char* value(const ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string quadcopter_name\n\
";
  }

  static const char* value(const ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.quadcopter_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetQuadcopterDataRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulation_control::GetQuadcopterDataRequest_<ContainerAllocator>& v)
  {
    s << indent << "quadcopter_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.quadcopter_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATION_CONTROL_MESSAGE_GETQUADCOPTERDATAREQUEST_H
