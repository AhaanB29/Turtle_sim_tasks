// Generated by gencpp from file DNT/AddTwoIntRequest.msg
// DO NOT EDIT!


#ifndef DNT_MESSAGE_ADDTWOINTREQUEST_H
#define DNT_MESSAGE_ADDTWOINTREQUEST_H


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
struct AddTwoIntRequest_
{
  typedef AddTwoIntRequest_<ContainerAllocator> Type;

  AddTwoIntRequest_()
    : a(0)
    , b(0)  {
    }
  AddTwoIntRequest_(const ContainerAllocator& _alloc)
    : a(0)
    , b(0)  {
  (void)_alloc;
    }



   typedef int64_t _a_type;
  _a_type a;

   typedef int64_t _b_type;
  _b_type b;





  typedef boost::shared_ptr< ::DNT::AddTwoIntRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::DNT::AddTwoIntRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AddTwoIntRequest_

typedef ::DNT::AddTwoIntRequest_<std::allocator<void> > AddTwoIntRequest;

typedef boost::shared_ptr< ::DNT::AddTwoIntRequest > AddTwoIntRequestPtr;
typedef boost::shared_ptr< ::DNT::AddTwoIntRequest const> AddTwoIntRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::DNT::AddTwoIntRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::DNT::AddTwoIntRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::DNT::AddTwoIntRequest_<ContainerAllocator1> & lhs, const ::DNT::AddTwoIntRequest_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a &&
    lhs.b == rhs.b;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::DNT::AddTwoIntRequest_<ContainerAllocator1> & lhs, const ::DNT::AddTwoIntRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace DNT

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::DNT::AddTwoIntRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::DNT::AddTwoIntRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::DNT::AddTwoIntRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::DNT::AddTwoIntRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::DNT::AddTwoIntRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::DNT::AddTwoIntRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::DNT::AddTwoIntRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "36d09b846be0b371c5f190354dd3153e";
  }

  static const char* value(const ::DNT::AddTwoIntRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x36d09b846be0b371ULL;
  static const uint64_t static_value2 = 0xc5f190354dd3153eULL;
};

template<class ContainerAllocator>
struct DataType< ::DNT::AddTwoIntRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "DNT/AddTwoIntRequest";
  }

  static const char* value(const ::DNT::AddTwoIntRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::DNT::AddTwoIntRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 a\n"
"int64 b\n"
;
  }

  static const char* value(const ::DNT::AddTwoIntRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::DNT::AddTwoIntRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddTwoIntRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::DNT::AddTwoIntRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::DNT::AddTwoIntRequest_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<int64_t>::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    Printer<int64_t>::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DNT_MESSAGE_ADDTWOINTREQUEST_H
