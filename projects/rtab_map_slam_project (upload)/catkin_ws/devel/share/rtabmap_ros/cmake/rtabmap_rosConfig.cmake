# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(rtabmap_ros_CONFIG_INCLUDED)
  return()
endif()
set(rtabmap_ros_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(rtabmap_ros_SOURCE_PREFIX /home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/src/rtabmap_ros)
  set(rtabmap_ros_DEVEL_PREFIX /home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/devel)
  set(rtabmap_ros_INSTALL_PREFIX "")
  set(rtabmap_ros_PREFIX ${rtabmap_ros_DEVEL_PREFIX})
else()
  set(rtabmap_ros_SOURCE_PREFIX "")
  set(rtabmap_ros_DEVEL_PREFIX "")
  set(rtabmap_ros_INSTALL_PREFIX /home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/install)
  set(rtabmap_ros_PREFIX ${rtabmap_ros_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'rtabmap_ros' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(rtabmap_ros_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/devel/include;/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/src/rtabmap_ros/include;/usr/local/lib/rtabmap-0.20/../../include/rtabmap-0.20;/usr/local/include/opencv4 " STREQUAL " ")
  set(rtabmap_ros_INCLUDE_DIRS "")
  set(_include_dirs "/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/devel/include;/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/src/rtabmap_ros/include;/usr/local/lib/rtabmap-0.20/../../include/rtabmap-0.20;/usr/local/include/opencv4")
  if(NOT "https://github.com/introlab/rtabmap_ros/issues " STREQUAL " ")
    set(_report "Check the issue tracker 'https://github.com/introlab/rtabmap_ros/issues' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Mathieu Labbe <matlabbe@gmail.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${rtabmap_ros_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'rtabmap_ros' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'rtabmap_ros' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/src/rtabmap_ros/${idir}'.  ${_report}")
    endif()
    _list_append_unique(rtabmap_ros_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "rtabmap_ros;/usr/local/lib/librtabmap_core.so;/usr/local/lib/librtabmap_utilite.so;/usr/local/lib/librtabmap_gui.so;/usr/lib/x86_64-linux-gnu/libz.so;/opt/ros/melodic/lib/libg2o_core.so;/opt/ros/melodic/lib/libg2o_types_slam2d.so;/opt/ros/melodic/lib/libg2o_types_slam3d.so;/opt/ros/melodic/lib/libg2o_types_sba.so;/opt/ros/melodic/lib/libg2o_stuff.so;/opt/ros/melodic/lib/libg2o_solver_csparse.so;/opt/ros/melodic/lib/libg2o_csparse_extension.so;/usr/lib/x86_64-linux-gnu/libcxsparse.so;/opt/ros/melodic/lib/libg2o_solver_cholmod.so;/usr/lib/x86_64-linux-gnu/libcholmod.so;/usr/lib/x86_64-linux-gnu/libfreenect.so;/usr/lib/x86_64-linux-gnu/libfreenect_sync.so;/usr/lib/libOpenNI2.so;/usr/lib/x86_64-linux-gnu/libdc1394.so;/opt/ros/melodic/lib/liboctomap.so;/opt/ros/melodic/lib/liboctomath.so;/usr/local/lib/libopencv_calib3d.so.4.4.0;/usr/local/lib/libopencv_core.so.4.4.0;/usr/local/lib/libopencv_dnn.so.4.4.0;/usr/local/lib/libopencv_features2d.so.4.4.0;/usr/local/lib/libopencv_flann.so.4.4.0;/usr/local/lib/libopencv_gapi.so.4.4.0;/usr/local/lib/libopencv_highgui.so.4.4.0;/usr/local/lib/libopencv_imgcodecs.so.4.4.0;/usr/local/lib/libopencv_imgproc.so.4.4.0;/usr/local/lib/libopencv_ml.so.4.4.0;/usr/local/lib/libopencv_objdetect.so.4.4.0;/usr/local/lib/libopencv_photo.so.4.4.0;/usr/local/lib/libopencv_stitching.so.4.4.0;/usr/local/lib/libopencv_video.so.4.4.0;/usr/local/lib/libopencv_videoio.so.4.4.0;/usr/local/lib/libopencv_alphamat.so.4.4.0;/usr/local/lib/libopencv_aruco.so.4.4.0;/usr/local/lib/libopencv_bgsegm.so.4.4.0;/usr/local/lib/libopencv_bioinspired.so.4.4.0;/usr/local/lib/libopencv_ccalib.so.4.4.0;/usr/local/lib/libopencv_datasets.so.4.4.0;/usr/local/lib/libopencv_dnn_objdetect.so.4.4.0;/usr/local/lib/libopencv_dnn_superres.so.4.4.0;/usr/local/lib/libopencv_dpm.so.4.4.0;/usr/local/lib/libopencv_face.so.4.4.0;/usr/local/lib/libopencv_freetype.so.4.4.0;/usr/local/lib/libopencv_fuzzy.so.4.4.0;/usr/local/lib/libopencv_hdf.so.4.4.0;/usr/local/lib/libopencv_hfs.so.4.4.0;/usr/local/lib/libopencv_img_hash.so.4.4.0;/usr/local/lib/libopencv_intensity_transform.so.4.4.0;/usr/local/lib/libopencv_line_descriptor.so.4.4.0;/usr/local/lib/libopencv_optflow.so.4.4.0;/usr/local/lib/libopencv_phase_unwrapping.so.4.4.0;/usr/local/lib/libopencv_plot.so.4.4.0;/usr/local/lib/libopencv_quality.so.4.4.0;/usr/local/lib/libopencv_rapid.so.4.4.0;/usr/local/lib/libopencv_reg.so.4.4.0;/usr/local/lib/libopencv_rgbd.so.4.4.0;/usr/local/lib/libopencv_saliency.so.4.4.0;/usr/local/lib/libopencv_shape.so.4.4.0;/usr/local/lib/libopencv_stereo.so.4.4.0;/usr/local/lib/libopencv_structured_light.so.4.4.0;/usr/local/lib/libopencv_superres.so.4.4.0;/usr/local/lib/libopencv_surface_matching.so.4.4.0;/usr/local/lib/libopencv_text.so.4.4.0;/usr/local/lib/libopencv_tracking.so.4.4.0;/usr/local/lib/libopencv_videostab.so.4.4.0;/usr/local/lib/libopencv_viz.so.4.4.0;/usr/local/lib/libopencv_xfeatures2d.so.4.4.0;/usr/local/lib/libopencv_ximgproc.so.4.4.0;/usr/local/lib/libopencv_xobjdetect.so.4.4.0;/usr/local/lib/libopencv_xphoto.so.4.4.0")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND rtabmap_ros_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND rtabmap_ros_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT rtabmap_ros_NUM_DUMMY_TARGETS)
      set(rtabmap_ros_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::rtabmap_ros::wrapped-linker-option${rtabmap_ros_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR rtabmap_ros_NUM_DUMMY_TARGETS "${rtabmap_ros_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::rtabmap_ros::wrapped-linker-option${rtabmap_ros_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND rtabmap_ros_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND rtabmap_ros_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND rtabmap_ros_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/devel/lib;/opt/ros/melodic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(rtabmap_ros_LIBRARY_DIRS ${lib_path})
      list(APPEND rtabmap_ros_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'rtabmap_ros'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND rtabmap_ros_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(rtabmap_ros_EXPORTED_TARGETS "rtabmap_ros_generate_messages_cpp;rtabmap_ros_generate_messages_eus;rtabmap_ros_generate_messages_lisp;rtabmap_ros_generate_messages_nodejs;rtabmap_ros_generate_messages_py;rtabmap_ros_gencfg")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${rtabmap_ros_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "cv_bridge;roscpp;rospy;sensor_msgs;std_msgs;std_srvs;nav_msgs;geometry_msgs;visualization_msgs;image_transport;tf;tf_conversions;tf2_ros;eigen_conversions;laser_geometry;pcl_conversions;pcl_ros;nodelet;dynamic_reconfigure;message_filters;class_loader;rosgraph_msgs;stereo_msgs;move_base_msgs;image_geometry;costmap_2d;octomap_msgs;rviz;find_object_2d")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 rtabmap_ros_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${rtabmap_ros_dep}_FOUND)
      find_package(${rtabmap_ros_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${rtabmap_ros_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(rtabmap_ros_INCLUDE_DIRS ${${rtabmap_ros_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(rtabmap_ros_LIBRARIES ${rtabmap_ros_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${rtabmap_ros_dep}_LIBRARIES})
  _list_append_deduplicate(rtabmap_ros_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(rtabmap_ros_LIBRARIES ${rtabmap_ros_LIBRARIES})

  _list_append_unique(rtabmap_ros_LIBRARY_DIRS ${${rtabmap_ros_dep}_LIBRARY_DIRS})
  list(APPEND rtabmap_ros_EXPORTED_TARGETS ${${rtabmap_ros_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "rtabmap_ros-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${rtabmap_ros_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
