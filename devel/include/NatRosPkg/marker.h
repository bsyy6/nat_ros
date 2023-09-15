// Generated by gencpp from file NatRosPkg/marker.msg
// DO NOT EDIT!


#ifndef NATROSPKG_MESSAGE_MARKER_H
#define NATROSPKG_MESSAGE_MARKER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace NatRosPkg
{
template <class ContainerAllocator>
struct marker_
{
  typedef marker_<ContainerAllocator> Type;

  marker_()
    : ID(0)
    , modelID(0)
    , position()
    , size(0.0)
    , params(0)
    , residual(0.0)
    , oclluded(false)
    , PCSolved(false)
    , ModelSolved(false)
    , HasModel(false)
    , Unlabled(false)
    , ActiveMarker(false)  {
    }
  marker_(const ContainerAllocator& _alloc)
    : ID(0)
    , modelID(0)
    , position(_alloc)
    , size(0.0)
    , params(0)
    , residual(0.0)
    , oclluded(false)
    , PCSolved(false)
    , ModelSolved(false)
    , HasModel(false)
    , Unlabled(false)
    , ActiveMarker(false)  {
  (void)_alloc;
    }



   typedef int32_t _ID_type;
  _ID_type ID;

   typedef int32_t _modelID_type;
  _modelID_type modelID;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef double _size_type;
  _size_type size;

   typedef int16_t _params_type;
  _params_type params;

   typedef double _residual_type;
  _residual_type residual;

   typedef uint8_t _oclluded_type;
  _oclluded_type oclluded;

   typedef uint8_t _PCSolved_type;
  _PCSolved_type PCSolved;

   typedef uint8_t _ModelSolved_type;
  _ModelSolved_type ModelSolved;

   typedef uint8_t _HasModel_type;
  _HasModel_type HasModel;

   typedef uint8_t _Unlabled_type;
  _Unlabled_type Unlabled;

   typedef uint8_t _ActiveMarker_type;
  _ActiveMarker_type ActiveMarker;





  typedef boost::shared_ptr< ::NatRosPkg::marker_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::NatRosPkg::marker_<ContainerAllocator> const> ConstPtr;

}; // struct marker_

typedef ::NatRosPkg::marker_<std::allocator<void> > marker;

typedef boost::shared_ptr< ::NatRosPkg::marker > markerPtr;
typedef boost::shared_ptr< ::NatRosPkg::marker const> markerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::NatRosPkg::marker_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::NatRosPkg::marker_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::NatRosPkg::marker_<ContainerAllocator1> & lhs, const ::NatRosPkg::marker_<ContainerAllocator2> & rhs)
{
  return lhs.ID == rhs.ID &&
    lhs.modelID == rhs.modelID &&
    lhs.position == rhs.position &&
    lhs.size == rhs.size &&
    lhs.params == rhs.params &&
    lhs.residual == rhs.residual &&
    lhs.oclluded == rhs.oclluded &&
    lhs.PCSolved == rhs.PCSolved &&
    lhs.ModelSolved == rhs.ModelSolved &&
    lhs.HasModel == rhs.HasModel &&
    lhs.Unlabled == rhs.Unlabled &&
    lhs.ActiveMarker == rhs.ActiveMarker;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::NatRosPkg::marker_<ContainerAllocator1> & lhs, const ::NatRosPkg::marker_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace NatRosPkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::NatRosPkg::marker_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::NatRosPkg::marker_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::NatRosPkg::marker_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::NatRosPkg::marker_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::NatRosPkg::marker_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::NatRosPkg::marker_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::NatRosPkg::marker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1cc80e06d1d63fc9aa98d6e8f0d4490d";
  }

  static const char* value(const ::NatRosPkg::marker_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1cc80e06d1d63fc9ULL;
  static const uint64_t static_value2 = 0xaa98d6e8f0d4490dULL;
};

template<class ContainerAllocator>
struct DataType< ::NatRosPkg::marker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "NatRosPkg/marker";
  }

  static const char* value(const ::NatRosPkg::marker_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::NatRosPkg::marker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 ID\n"
"int32 modelID\n"
"geometry_msgs/Point position\n"
"float64 size\n"
"int16 params\n"
"float64 residual\n"
"\n"
"\n"
"bool oclluded \n"
"bool PCSolved \n"
"bool ModelSolved \n"
"bool HasModel \n"
"bool Unlabled \n"
"bool ActiveMarker \n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::NatRosPkg::marker_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::NatRosPkg::marker_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ID);
      stream.next(m.modelID);
      stream.next(m.position);
      stream.next(m.size);
      stream.next(m.params);
      stream.next(m.residual);
      stream.next(m.oclluded);
      stream.next(m.PCSolved);
      stream.next(m.ModelSolved);
      stream.next(m.HasModel);
      stream.next(m.Unlabled);
      stream.next(m.ActiveMarker);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct marker_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::NatRosPkg::marker_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::NatRosPkg::marker_<ContainerAllocator>& v)
  {
    s << indent << "ID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.ID);
    s << indent << "modelID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.modelID);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "size: ";
    Printer<double>::stream(s, indent + "  ", v.size);
    s << indent << "params: ";
    Printer<int16_t>::stream(s, indent + "  ", v.params);
    s << indent << "residual: ";
    Printer<double>::stream(s, indent + "  ", v.residual);
    s << indent << "oclluded: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.oclluded);
    s << indent << "PCSolved: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.PCSolved);
    s << indent << "ModelSolved: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ModelSolved);
    s << indent << "HasModel: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.HasModel);
    s << indent << "Unlabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Unlabled);
    s << indent << "ActiveMarker: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ActiveMarker);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NATROSPKG_MESSAGE_MARKER_H
