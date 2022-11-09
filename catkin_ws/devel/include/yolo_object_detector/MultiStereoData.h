// Generated by gencpp from file yolo_object_detector/MultiStereoData.msg
// DO NOT EDIT!


#ifndef YOLO_OBJECT_DETECTOR_MESSAGE_MULTISTEREODATA_H
#define YOLO_OBJECT_DETECTOR_MESSAGE_MULTISTEREODATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <yolo_object_detector/StereoData.h>

namespace yolo_object_detector
{
template <class ContainerAllocator>
struct MultiStereoData_
{
  typedef MultiStereoData_<ContainerAllocator> Type;

  MultiStereoData_()
    : object_distance()  {
    }
  MultiStereoData_(const ContainerAllocator& _alloc)
    : object_distance(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::yolo_object_detector::StereoData_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::yolo_object_detector::StereoData_<ContainerAllocator> >::other >  _object_distance_type;
  _object_distance_type object_distance;





  typedef boost::shared_ptr< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> const> ConstPtr;

}; // struct MultiStereoData_

typedef ::yolo_object_detector::MultiStereoData_<std::allocator<void> > MultiStereoData;

typedef boost::shared_ptr< ::yolo_object_detector::MultiStereoData > MultiStereoDataPtr;
typedef boost::shared_ptr< ::yolo_object_detector::MultiStereoData const> MultiStereoDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yolo_object_detector::MultiStereoData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::yolo_object_detector::MultiStereoData_<ContainerAllocator1> & lhs, const ::yolo_object_detector::MultiStereoData_<ContainerAllocator2> & rhs)
{
  return lhs.object_distance == rhs.object_distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::yolo_object_detector::MultiStereoData_<ContainerAllocator1> & lhs, const ::yolo_object_detector::MultiStereoData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace yolo_object_detector

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c6ceca52144a9fa61205d857ffcfa332";
  }

  static const char* value(const ::yolo_object_detector::MultiStereoData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc6ceca52144a9fa6ULL;
  static const uint64_t static_value2 = 0x1205d857ffcfa332ULL;
};

template<class ContainerAllocator>
struct DataType< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yolo_object_detector/MultiStereoData";
  }

  static const char* value(const ::yolo_object_detector::MultiStereoData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "StereoData[] object_distance\n"
"\n"
"================================================================================\n"
"MSG: yolo_object_detector/StereoData\n"
"string object\n"
"float32 distance\n"
;
  }

  static const char* value(const ::yolo_object_detector::MultiStereoData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object_distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MultiStereoData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yolo_object_detector::MultiStereoData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yolo_object_detector::MultiStereoData_<ContainerAllocator>& v)
  {
    s << indent << "object_distance[]" << std::endl;
    for (size_t i = 0; i < v.object_distance.size(); ++i)
    {
      s << indent << "  object_distance[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::yolo_object_detector::StereoData_<ContainerAllocator> >::stream(s, indent + "    ", v.object_distance[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // YOLO_OBJECT_DETECTOR_MESSAGE_MULTISTEREODATA_H