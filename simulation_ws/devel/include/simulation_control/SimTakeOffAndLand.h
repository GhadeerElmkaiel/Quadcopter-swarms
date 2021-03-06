// Generated by gencpp from file simulation_control/SimTakeOffAndLand.msg
// DO NOT EDIT!


#ifndef SIMULATION_CONTROL_MESSAGE_SIMTAKEOFFANDLAND_H
#define SIMULATION_CONTROL_MESSAGE_SIMTAKEOFFANDLAND_H

#include <ros/service_traits.h>


#include <simulation_control/SimTakeOffAndLandRequest.h>
#include <simulation_control/SimTakeOffAndLandResponse.h>


namespace simulation_control
{

struct SimTakeOffAndLand
{

typedef SimTakeOffAndLandRequest Request;
typedef SimTakeOffAndLandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SimTakeOffAndLand
} // namespace simulation_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::simulation_control::SimTakeOffAndLand > {
  static const char* value()
  {
    return "05a98b9b216be82ed5a9ff071217958d";
  }

  static const char* value(const ::simulation_control::SimTakeOffAndLand&) { return value(); }
};

template<>
struct DataType< ::simulation_control::SimTakeOffAndLand > {
  static const char* value()
  {
    return "simulation_control/SimTakeOffAndLand";
  }

  static const char* value(const ::simulation_control::SimTakeOffAndLand&) { return value(); }
};


// service_traits::MD5Sum< ::simulation_control::SimTakeOffAndLandRequest> should match 
// service_traits::MD5Sum< ::simulation_control::SimTakeOffAndLand > 
template<>
struct MD5Sum< ::simulation_control::SimTakeOffAndLandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::simulation_control::SimTakeOffAndLand >::value();
  }
  static const char* value(const ::simulation_control::SimTakeOffAndLandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::simulation_control::SimTakeOffAndLandRequest> should match 
// service_traits::DataType< ::simulation_control::SimTakeOffAndLand > 
template<>
struct DataType< ::simulation_control::SimTakeOffAndLandRequest>
{
  static const char* value()
  {
    return DataType< ::simulation_control::SimTakeOffAndLand >::value();
  }
  static const char* value(const ::simulation_control::SimTakeOffAndLandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::simulation_control::SimTakeOffAndLandResponse> should match 
// service_traits::MD5Sum< ::simulation_control::SimTakeOffAndLand > 
template<>
struct MD5Sum< ::simulation_control::SimTakeOffAndLandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::simulation_control::SimTakeOffAndLand >::value();
  }
  static const char* value(const ::simulation_control::SimTakeOffAndLandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::simulation_control::SimTakeOffAndLandResponse> should match 
// service_traits::DataType< ::simulation_control::SimTakeOffAndLand > 
template<>
struct DataType< ::simulation_control::SimTakeOffAndLandResponse>
{
  static const char* value()
  {
    return DataType< ::simulation_control::SimTakeOffAndLand >::value();
  }
  static const char* value(const ::simulation_control::SimTakeOffAndLandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SIMULATION_CONTROL_MESSAGE_SIMTAKEOFFANDLAND_H
