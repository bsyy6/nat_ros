// Generated by gencpp from file NatRosPkg/skeletons.msg
// DO NOT EDIT!


#ifndef NATROSPKG_MESSAGE_SKELETONS_H
#define NATROSPKG_MESSAGE_SKELETONS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <NatRosPkg/skeleton.h>

namespace NatRosPkg
{
template <class ContainerAllocator>
struct skeletons_
{
  typedef skeletons_<ContainerAllocator> Type;

  skeletons_()
    : nSkeletons(0)
    , skeletons()  {
    }
  skeletons_(const ContainerAllocator& _alloc)
    : nSkeletons(0)
    , skeletons(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _nSkeletons_type;
  _nSkeletons_type nSkeletons;

   typedef std::vector< ::NatRosPkg::skeleton_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::NatRosPkg::skeleton_<ContainerAllocator> >> _skeletons_type;
  _skeletons_type skeletons;





  typedef boost::shared_ptr< ::NatRosPkg::skeletons_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::NatRosPkg::skeletons_<ContainerAllocator> const> ConstPtr;

}; // struct skeletons_

typedef ::NatRosPkg::skeletons_<std::allocator<void> > skeletons;

typedef boost::shared_ptr< ::NatRosPkg::skeletons > skeletonsPtr;
typedef boost::shared_ptr< ::NatRosPkg::skeletons const> skeletonsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::NatRosPkg::skeletons_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::NatRosPkg::skeletons_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::NatRosPkg::skeletons_<ContainerAllocator1> & lhs, const ::NatRosPkg::skeletons_<ContainerAllocator2> & rhs)
{
  return lhs.nSkeletons == rhs.nSkeletons &&
    lhs.skeletons == rhs.skeletons;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::NatRosPkg::skeletons_<ContainerAllocator1> & lhs, const ::NatRosPkg::skeletons_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace NatRosPkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::NatRosPkg::skeletons_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::NatRosPkg::skeletons_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::NatRosPkg::skeletons_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::NatRosPkg::skeletons_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::NatRosPkg::skeletons_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::NatRosPkg::skeletons_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::NatRosPkg::skeletons_<ContainerAllocator> >
{
  static const char* value()
  {
    return "498018be8091f821b47e752d2a3c0e29";
  }

  static const char* value(const ::NatRosPkg::skeletons_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x498018be8091f821ULL;
  static const uint64_t static_value2 = 0xb47e752d2a3c0e29ULL;
};

template<class ContainerAllocator>
struct DataType< ::NatRosPkg::skeletons_<ContainerAllocator> >
{
  static const char* value()
  {
    return "NatRosPkg/skeletons";
  }

  static const char* value(const ::NatRosPkg::skeletons_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::NatRosPkg::skeletons_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 nSkeletons\n"
"skeleton[] skeletons\n"
"================================================================================\n"
"MSG: NatRosPkg/skeleton\n"
"string name\n"
"int32 ID\n"
"int32 nRigidBodies\n"
"body[] bodies\n"
"================================================================================\n"
"MSG: NatRosPkg/body\n"
"int32 id\n"
"geometry_msgs/Pose pose\n"
"float64 meanError\n"
"bool isValid\n"
"int16 params\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::NatRosPkg::skeletons_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::NatRosPkg::skeletons_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.nSkeletons);
      stream.next(m.skeletons);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct skeletons_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::NatRosPkg::skeletons_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::NatRosPkg::skeletons_<ContainerAllocator>& v)
  {
    s << indent << "nSkeletons: ";
    Printer<int32_t>::stream(s, indent + "  ", v.nSkeletons);
    s << indent << "skeletons[]" << std::endl;
    for (size_t i = 0; i < v.skeletons.size(); ++i)
    {
      s << indent << "  skeletons[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::NatRosPkg::skeleton_<ContainerAllocator> >::stream(s, indent + "    ", v.skeletons[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NATROSPKG_MESSAGE_SKELETONS_H