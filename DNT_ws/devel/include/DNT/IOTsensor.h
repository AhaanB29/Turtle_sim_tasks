// Generated by gencpp from file DNT/IOTsensor.msg
// DO NOT EDIT!


#ifndef DNT_MESSAGE_IOTSENSOR_H
#define DNT_MESSAGE_IOTSENSOR_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace DNT
{
template <class ContainerAllocator>
struct IOTsensor_
{
  typedef IOTsensor_<ContainerAllocator> Type;

  IOTsensor_()
    : id(0)
    , name()
    , temperature(0.0)
    , humidity(0.0)  {
    }
  IOTsensor_(const ContainerAllocator& _alloc)
    : id(0)
    , name(_alloc)
    , temperature(0.0)
    , humidity(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef double _temperature_type;
  _temperature_type temperature;

   typedef double _humidity_type;
  _humidity_type humidity;





  typedef boost::shared_ptr< ::DNT::IOTsensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::DNT::IOTsensor_<ContainerAllocator> const> ConstPtr;

}; // struct IOTsensor_

typedef ::DNT::IOTsensor_<std::allocator<void> > IOTsensor;

typedef boost::shared_ptr< ::DNT::IOTsensor > IOTsensorPtr;
typedef boost::shared_ptr< ::DNT::IOTsensor const> IOTsensorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::DNT::IOTsensor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::DNT::IOTsensor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::DNT::IOTsensor_<ContainerAllocator1> & lhs, const ::DNT::IOTsensor_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.name == rhs.name &&
    lhs.temperature == rhs.temperature &&
    lhs.humidity == rhs.humidity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::DNT::IOTsensor_<ContainerAllocator1> & lhs, const ::DNT::IOTsensor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace DNT

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::DNT::IOTsensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::DNT::IOTsensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::DNT::IOTsensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::DNT::IOTsensor_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::DNT::IOTsensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::DNT::IOTsensor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::DNT::IOTsensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d5bf045547d7eeb1b747d0776fbbbf38";
  }

  static const char* value(const ::DNT::IOTsensor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd5bf045547d7eeb1ULL;
  static const uint64_t static_value2 = 0xb747d0776fbbbf38ULL;
};

template<class ContainerAllocator>
struct DataType< ::DNT::IOTsensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "DNT/IOTsensor";
  }

  static const char* value(const ::DNT::IOTsensor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::DNT::IOTsensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32  id\n"
"string name\n"
"float64 temperature\n"
"float64 humidity\n"
;
  }

  static const char* value(const ::DNT::IOTsensor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::DNT::IOTsensor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.name);
      stream.next(m.temperature);
      stream.next(m.humidity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IOTsensor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::DNT::IOTsensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::DNT::IOTsensor_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "temperature: ";
    Printer<double>::stream(s, indent + "  ", v.temperature);
    s << indent << "humidity: ";
    Printer<double>::stream(s, indent + "  ", v.humidity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DNT_MESSAGE_IOTSENSOR_H
