module opencl.Cl;

// from platform_cl.h

alias char         cl_char;
alias uchar         cl_uchar;
alias short        cl_short;
alias ushort        cl_ushort;
alias int        cl_int;
alias uint        cl_uint;
alias long        cl_long;
alias ulong        cl_ulong;

alias ushort        cl_half;
alias float                   cl_float;
alias double                  cl_double;



alias int* intptr_t;


// version 1.2 header
// from offical site

/*
alias struct _cl_platform_id *    cl_platform_id;
alias struct _cl_device_id *      cl_device_id;
alias struct _cl_context *        cl_context;
alias struct _cl_command_queue *  cl_command_queue;
alias struct _cl_mem *            cl_mem;
alias struct _cl_program *        cl_program;
alias struct _cl_kernel *         cl_kernel;
alias struct _cl_event *          cl_event;
alias struct _cl_sampler *        cl_sampler;
*/

alias cl_uint             cl_bool;                     /* WARNING!  Unlike cl_ types in cl_platform.h, cl_bool is not guaranteed to be the same size as the bool in kernels. */ 
alias cl_ulong            cl_bitfield;
alias cl_bitfield         cl_device_type;
alias cl_uint             cl_platform_info;
alias cl_uint             cl_device_info;
alias cl_bitfield         cl_device_fp_config;
alias cl_uint             cl_device_mem_cache_type;
alias cl_uint             cl_device_local_mem_type;
alias cl_bitfield         cl_device_exec_capabilities;
alias cl_bitfield         cl_command_queue_properties;
alias intptr_t            cl_device_partition_property;
alias cl_bitfield         cl_device_affinity_domain;

alias intptr_t            cl_context_properties;
alias cl_uint             cl_context_info;
alias cl_uint             cl_command_queue_info;
alias cl_uint             cl_channel_order;
alias cl_uint             cl_channel_type;
alias cl_bitfield         cl_mem_flags;
alias cl_uint             cl_mem_object_type;
alias cl_uint             cl_mem_info;
alias cl_bitfield         cl_mem_migration_flags;
alias cl_uint             cl_image_info;
alias cl_uint             cl_buffer_create_type;
alias cl_uint             cl_addressing_mode;
alias cl_uint             cl_filter_mode;
alias cl_uint             cl_sampler_info;
alias cl_bitfield         cl_map_flags;
alias cl_uint             cl_program_info;
alias cl_uint             cl_program_build_info;
alias cl_uint             cl_program_binary_type;
alias cl_int              cl_build_status;
alias cl_uint             cl_kernel_info;
alias cl_uint             cl_kernel_arg_info;
alias cl_uint             cl_kernel_arg_address_qualifier;
alias cl_uint             cl_kernel_arg_access_qualifier;
alias cl_bitfield         cl_kernel_arg_type_qualifier;
alias cl_uint             cl_kernel_work_group_info;
alias cl_uint             cl_event_info;
alias cl_uint             cl_command_type;
alias cl_uint             cl_profiling_info;


struct cl_image_format {
    cl_channel_order        image_channel_order;
    cl_channel_type         image_channel_data_type;
}

alias struct cl_image_desc {
    cl_mem_object_type      image_type;
    size_t                  image_width;
    size_t                  image_height;
    size_t                  image_depth;
    size_t                  image_array_size;
    size_t                  image_row_pitch;
    size_t                  image_slice_pitch;
    cl_uint                 num_mip_levels;
    cl_uint                 num_samples;
    cl_mem                  buffer;
}

alias struct cl_buffer_region {
    size_t                  origin;
    size_t                  size;
}


/******************************************************************************/

/* Error Codes */
;const uint  CL_SUCCESS                                  = 0
;const uint  CL_DEVICE_NOT_FOUND                         = -1
;const uint  CL_DEVICE_NOT_AVAILABLE                     = -2
;const uint  CL_COMPILER_NOT_AVAILABLE                   = -3
;const uint  CL_MEM_OBJECT_ALLOCATION_FAILURE            = -4
;const uint  CL_OUT_OF_RESOURCES                         = -5
;const uint  CL_OUT_OF_HOST_MEMORY                       = -6
;const uint  CL_PROFILING_INFO_NOT_AVAILABLE             = -7
;const uint  CL_MEM_COPY_OVERLAP                         = -8
;const uint  CL_IMAGE_FORMAT_MISMATCH                    = -9
;const uint  CL_IMAGE_FORMAT_NOT_SUPPORTED               = -10
;const uint  CL_BUILD_PROGRAM_FAILURE                    = -11
;const uint  CL_MAP_FAILURE                              = -12
;const uint  CL_MISALIGNED_SUB_BUFFER_OFFSET             = -13
;const uint  CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST = -14
;const uint  CL_COMPILE_PROGRAM_FAILURE                  = -15
;const uint  CL_LINKER_NOT_AVAILABLE                     = -16
;const uint  CL_LINK_PROGRAM_FAILURE                     = -17
;const uint  CL_DEVICE_PARTITION_FAILED                  = -18
;const uint  CL_KERNEL_ARG_INFO_NOT_AVAILABLE            = -19

;const uint  CL_INVALID_VALUE                            = -30
;const uint  CL_INVALID_DEVICE_TYPE                      = -31
;const uint  CL_INVALID_PLATFORM                         = -32
;const uint  CL_INVALID_DEVICE                           = -33
;const uint  CL_INVALID_CONTEXT                          = -34
;const uint  CL_INVALID_QUEUE_PROPERTIES                 = -35
;const uint  CL_INVALID_COMMAND_QUEUE                    = -36
;const uint  CL_INVALID_HOST_PTR                         = -37
;const uint  CL_INVALID_MEM_OBJECT                       = -38
;const uint  CL_INVALID_IMAGE_FORMAT_DESCRIPTOR          = -39
;const uint  CL_INVALID_IMAGE_SIZE                       = -40
;const uint  CL_INVALID_SAMPLER                          = -41
;const uint  CL_INVALID_BINARY                           = -42
;const uint  CL_INVALID_BUILD_OPTIONS                    = -43
;const uint  CL_INVALID_PROGRAM                          = -44
;const uint  CL_INVALID_PROGRAM_EXECUTABLE               = -45
;const uint  CL_INVALID_KERNEL_NAME                      = -46
;const uint  CL_INVALID_KERNEL_DEFINITION                = -47
;const uint  CL_INVALID_KERNEL                           = -48
;const uint  CL_INVALID_ARG_INDEX                        = -49
;const uint  CL_INVALID_ARG_VALUE                        = -50
;const uint  CL_INVALID_ARG_SIZE                         = -51
;const uint  CL_INVALID_KERNEL_ARGS                      = -52
;const uint  CL_INVALID_WORK_DIMENSION                   = -53
;const uint  CL_INVALID_WORK_GROUP_SIZE                  = -54
;const uint  CL_INVALID_WORK_ITEM_SIZE                   = -55
;const uint  CL_INVALID_GLOBAL_OFFSET                    = -56
;const uint  CL_INVALID_EVENT_WAIT_LIST                  = -57
;const uint  CL_INVALID_EVENT                            = -58
;const uint  CL_INVALID_OPERATION                        = -59
;const uint  CL_INVALID_GL_OBJECT                        = -60
;const uint  CL_INVALID_BUFFER_SIZE                      = -61
;const uint  CL_INVALID_MIP_LEVEL                        = -62
;const uint  CL_INVALID_GLOBAL_WORK_SIZE                 = -63
;const uint  CL_INVALID_PROPERTY                         = -64
;const uint  CL_INVALID_IMAGE_DESCRIPTOR                 = -65
;const uint  CL_INVALID_COMPILER_OPTIONS                 = -66
;const uint  CL_INVALID_LINKER_OPTIONS                   = -67
;const uint  CL_INVALID_DEVICE_PARTITION_COUNT           = -68

/* OpenCL Version */
;const uint  CL_VERSION_1_0                              = 1
;const uint  CL_VERSION_1_1                              = 1
;const uint  CL_VERSION_1_2                              = 1

/* cl_bool */
;const uint  CL_FALSE                                    = 0
;const uint  CL_TRUE                                     = 1
;const uint  CL_BLOCKING                                 = CL_TRUE
;const uint  CL_NON_BLOCKING                             = CL_FALSE

/* cl_platform_info */
;const uint  CL_PLATFORM_PROFILE                         = 0x0900
;const uint  CL_PLATFORM_VERSION                         = 0x0901
;const uint  CL_PLATFORM_NAME                            = 0x0902
;const uint  CL_PLATFORM_VENDOR                          = 0x0903
;const uint  CL_PLATFORM_EXTENSIONS                      = 0x0904

/* cl_device_type - bitfield */
;const uint  CL_DEVICE_TYPE_DEFAULT                      (1 << 0)
;const uint  CL_DEVICE_TYPE_CPU                          (1 << 1)
;const uint  CL_DEVICE_TYPE_GPU                          (1 << 2)
;const uint  CL_DEVICE_TYPE_ACCELERATOR                  (1 << 3)
;const uint  CL_DEVICE_TYPE_CUSTOM                       (1 << 4)
;const uint  CL_DEVICE_TYPE_ALL                          = 0xFFFFFFFF

/* cl_device_info */
;const uint  CL_DEVICE_TYPE                              = 0x1000
;const uint  CL_DEVICE_VENDOR_ID                         = 0x1001
;const uint  CL_DEVICE_MAX_COMPUTE_UNITS                 = 0x1002
;const uint  CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS          = 0x1003
;const uint  CL_DEVICE_MAX_WORK_GROUP_SIZE               = 0x1004
;const uint  CL_DEVICE_MAX_WORK_ITEM_SIZES               = 0x1005
;const uint  CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR       = 0x1006
;const uint  CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT      = 0x1007
;const uint  CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT        = 0x1008
;const uint  CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG       = 0x1009
;const uint  CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT      = 0x100A
;const uint  CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE     = 0x100B
;const uint  CL_DEVICE_MAX_CLOCK_FREQUENCY               = 0x100C
;const uint  CL_DEVICE_ADDRESS_BITS                      = 0x100D
;const uint  CL_DEVICE_MAX_READ_IMAGE_ARGS               = 0x100E
;const uint  CL_DEVICE_MAX_WRITE_IMAGE_ARGS              = 0x100F
;const uint  CL_DEVICE_MAX_MEM_ALLOC_SIZE                = 0x1010
;const uint  CL_DEVICE_IMAGE2D_MAX_WIDTH                 = 0x1011
;const uint  CL_DEVICE_IMAGE2D_MAX_HEIGHT                = 0x1012
;const uint  CL_DEVICE_IMAGE3D_MAX_WIDTH                 = 0x1013
;const uint  CL_DEVICE_IMAGE3D_MAX_HEIGHT                = 0x1014
;const uint  CL_DEVICE_IMAGE3D_MAX_DEPTH                 = 0x1015
;const uint  CL_DEVICE_IMAGE_SUPPORT                     = 0x1016
;const uint  CL_DEVICE_MAX_PARAMETER_SIZE                = 0x1017
;const uint  CL_DEVICE_MAX_SAMPLERS                      = 0x1018
;const uint  CL_DEVICE_MEM_BASE_ADDR_ALIGN               = 0x1019
;const uint  CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE          = 0x101A
;const uint  CL_DEVICE_SINGLE_FP_CONFIG                  = 0x101B
;const uint  CL_DEVICE_GLOBAL_MEM_CACHE_TYPE             = 0x101C
;const uint  CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE         = 0x101D
;const uint  CL_DEVICE_GLOBAL_MEM_CACHE_SIZE             = 0x101E
;const uint  CL_DEVICE_GLOBAL_MEM_SIZE                   = 0x101F
;const uint  CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE          = 0x1020
;const uint  CL_DEVICE_MAX_CONSTANT_ARGS                 = 0x1021
;const uint  CL_DEVICE_LOCAL_MEM_TYPE                    = 0x1022
;const uint  CL_DEVICE_LOCAL_MEM_SIZE                    = 0x1023
;const uint  CL_DEVICE_ERROR_CORRECTION_SUPPORT          = 0x1024
;const uint  CL_DEVICE_PROFILING_TIMER_RESOLUTION        = 0x1025
;const uint  CL_DEVICE_ENDIAN_LITTLE                     = 0x1026
;const uint  CL_DEVICE_AVAILABLE                         = 0x1027
;const uint  CL_DEVICE_COMPILER_AVAILABLE                = 0x1028
;const uint  CL_DEVICE_EXECUTION_CAPABILITIES            = 0x1029
;const uint  CL_DEVICE_QUEUE_PROPERTIES                  = 0x102A
;const uint  CL_DEVICE_NAME                              = 0x102B
;const uint  CL_DEVICE_VENDOR                            = 0x102C
;const uint  CL_DRIVER_VERSION                           = 0x102D
;const uint  CL_DEVICE_PROFILE                           = 0x102E
;const uint  CL_DEVICE_VERSION                           = 0x102F
;const uint  CL_DEVICE_EXTENSIONS                        = 0x1030
;const uint  CL_DEVICE_PLATFORM                          = 0x1031
;const uint  CL_DEVICE_DOUBLE_FP_CONFIG                  = 0x1032
/* = 0x1033 reserved for CL_DEVICE_HALF_FP_CONFIG */
;const uint  CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF       = 0x1034
;const uint  CL_DEVICE_HOST_UNIFIED_MEMORY               = 0x1035
;const uint  CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR          = 0x1036
;const uint  CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT         = 0x1037
;const uint  CL_DEVICE_NATIVE_VECTOR_WIDTH_INT           = 0x1038
;const uint  CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG          = 0x1039
;const uint  CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT         = 0x103A
;const uint  CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE        = 0x103B
;const uint  CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF          = 0x103C
;const uint  CL_DEVICE_OPENCL_C_VERSION                  = 0x103D
;const uint  CL_DEVICE_LINKER_AVAILABLE                  = 0x103E
;const uint  CL_DEVICE_BUILT_IN_KERNELS                  = 0x103F
;const uint  CL_DEVICE_IMAGE_MAX_BUFFER_SIZE             = 0x1040
;const uint  CL_DEVICE_IMAGE_MAX_ARRAY_SIZE              = 0x1041
;const uint  CL_DEVICE_PARENT_DEVICE                     = 0x1042
;const uint  CL_DEVICE_PARTITION_MAX_SUB_DEVICES         = 0x1043
;const uint  CL_DEVICE_PARTITION_PROPERTIES              = 0x1044
;const uint  CL_DEVICE_PARTITION_AFFINITY_DOMAIN         = 0x1045
;const uint  CL_DEVICE_PARTITION_TYPE                    = 0x1046
;const uint  CL_DEVICE_REFERENCE_COUNT                   = 0x1047
;const uint  CL_DEVICE_PREFERRED_INTEROP_USER_SYNC       = 0x1048
;const uint  CL_DEVICE_PRINTF_BUFFER_SIZE                = 0x1049
;const uint  CL_DEVICE_IMAGE_PITCH_ALIGNMENT             = 0x104A
;const uint  CL_DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT      = 0x104B

/* cl_device_fp_config - bitfield */
;const uint  CL_FP_DENORM                                = (1 << 0)
;const uint  CL_FP_INF_NAN                               = (1 << 1)
;const uint  CL_FP_ROUND_TO_NEAREST                      = (1 << 2)
;const uint  CL_FP_ROUND_TO_ZERO                         = (1 << 3)
;const uint  CL_FP_ROUND_TO_INF                          = (1 << 4)
;const uint  CL_FP_FMA                                   = (1 << 5)
;const uint  CL_FP_SOFT_FLOAT                            = (1 << 6)
;const uint  CL_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT         = (1 << 7)

/* cl_device_mem_cache_type */
;const uint  CL_NONE                                     = 0x0
;const uint  CL_READ_ONLY_CACHE                          = 0x1
;const uint  CL_READ_WRITE_CACHE                         = 0x2

/* cl_device_local_mem_type */
;const uint  CL_LOCAL                                    = 0x1
;const uint  CL_GLOBAL                                   = 0x2

/* cl_device_exec_capabilities - bitfield */
;const uint  CL_EXEC_KERNEL                              = (1 << 0)
;const uint  CL_EXEC_NATIVE_KERNEL                       = (1 << 1)

/* cl_command_queue_properties - bitfield */
;const uint  CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE      = (1 << 0)
;const uint  CL_QUEUE_PROFILING_ENABLE                   = (1 << 1)

/* cl_context_info  */
;const uint  CL_CONTEXT_REFERENCE_COUNT                  = 0x1080
;const uint  CL_CONTEXT_DEVICES                          = 0x1081
;const uint  CL_CONTEXT_PROPERTIES                       = 0x1082
;const uint  CL_CONTEXT_NUM_DEVICES                      = 0x1083

/* cl_context_properties */
;const uint  CL_CONTEXT_PLATFORM                         = 0x1084
;const uint  CL_CONTEXT_INTEROP_USER_SYNC                = 0x1085
    
/* cl_device_partition_property */
;const uint  CL_DEVICE_PARTITION_EQUALLY                 = 0x1086
;const uint  CL_DEVICE_PARTITION_BY_COUNTS               = 0x1087
;const uint  CL_DEVICE_PARTITION_BY_COUNTS_LIST_END      = 0x0
;const uint  CL_DEVICE_PARTITION_BY_AFFINITY_DOMAIN      = 0x1088
    
/* cl_device_affinity_domain */
;const uint  CL_DEVICE_AFFINITY_DOMAIN_NUMA                    = (1 << 0)
;const uint  CL_DEVICE_AFFINITY_DOMAIN_L4_CACHE                = (1 << 1)
;const uint  CL_DEVICE_AFFINITY_DOMAIN_L3_CACHE                = (1 << 2)
;const uint  CL_DEVICE_AFFINITY_DOMAIN_L2_CACHE                = (1 << 3)
;const uint  CL_DEVICE_AFFINITY_DOMAIN_L1_CACHE                = (1 << 4)
;const uint  CL_DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE      = (1 << 5)

/* cl_command_queue_info */
;const uint  CL_QUEUE_CONTEXT                            = 0x1090
;const uint  CL_QUEUE_DEVICE                             = 0x1091
;const uint  CL_QUEUE_REFERENCE_COUNT                    = 0x1092
;const uint  CL_QUEUE_PROPERTIES                         = 0x1093

/* cl_mem_flags - bitfield */
;const uint  CL_MEM_READ_WRITE                           = (1 << 0)
;const uint  CL_MEM_WRITE_ONLY                           = (1 << 1)
;const uint  CL_MEM_READ_ONLY                            = (1 << 2)
;const uint  CL_MEM_USE_HOST_PTR                         = (1 << 3)
;const uint  CL_MEM_ALLOC_HOST_PTR                       = (1 << 4)
;const uint  CL_MEM_COPY_HOST_PTR                        = (1 << 5)
/* reserved                                         (1 << 6)    */
;const uint  CL_MEM_HOST_WRITE_ONLY                      = (1 << 7)
;const uint  CL_MEM_HOST_READ_ONLY                       = (1 << 8)
;const uint  CL_MEM_HOST_NO_ACCESS                       = (1 << 9)

/* cl_mem_migration_flags - bitfield */
;const uint  CL_MIGRATE_MEM_OBJECT_HOST                  = (1 << 0)
;const uint  CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED     = (1 << 1)

/* cl_channel_order */
;const uint  CL_R                                        = 0x10B0
;const uint  CL_A                                        = 0x10B1
;const uint  CL_RG                                       = 0x10B2
;const uint  CL_RA                                       = 0x10B3
;const uint  CL_RGB                                      = 0x10B4
;const uint  CL_RGBA                                     = 0x10B5
;const uint  CL_BGRA                                     = 0x10B6
;const uint  CL_ARGB                                     = 0x10B7
;const uint  CL_INTENSITY                                = 0x10B8
;const uint  CL_LUMINANCE                                = 0x10B9
;const uint  CL_Rx                                       = 0x10BA
;const uint  CL_RGx                                      = 0x10BB
;const uint  CL_RGBx                                     = 0x10BC
;const uint  CL_DEPTH                                    = 0x10BD
;const uint  CL_DEPTH_STENCIL                            = 0x10BE

/* cl_channel_type */
;const uint  CL_SNORM_INT8                               = 0x10D0
;const uint  CL_SNORM_INT16                              = 0x10D1
;const uint  CL_UNORM_INT8                               = 0x10D2
;const uint  CL_UNORM_INT16                              = 0x10D3
;const uint  CL_UNORM_SHORT_565                          = 0x10D4
;const uint  CL_UNORM_SHORT_555                          = 0x10D5
;const uint  CL_UNORM_INT_101010                         = 0x10D6
;const uint  CL_SIGNED_INT8                              = 0x10D7
;const uint  CL_SIGNED_INT16                             = 0x10D8
;const uint  CL_SIGNED_INT32                             = 0x10D9
;const uint  CL_UNSIGNED_INT8                            = 0x10DA
;const uint  CL_UNSIGNED_INT16                           = 0x10DB
;const uint  CL_UNSIGNED_INT32                           = 0x10DC
;const uint  CL_HALF_FLOAT                               = 0x10DD
;const uint  CL_FLOAT                                    = 0x10DE
;const uint  CL_UNORM_INT24                              = 0x10DF

/* cl_mem_object_type */
;const uint  CL_MEM_OBJECT_BUFFER                        = 0x10F0
;const uint  CL_MEM_OBJECT_IMAGE2D                       = 0x10F1
;const uint  CL_MEM_OBJECT_IMAGE3D                       = 0x10F2
;const uint  CL_MEM_OBJECT_IMAGE2D_ARRAY                 = 0x10F3
;const uint  CL_MEM_OBJECT_IMAGE1D                       = 0x10F4
;const uint  CL_MEM_OBJECT_IMAGE1D_ARRAY                 = 0x10F5
;const uint  CL_MEM_OBJECT_IMAGE1D_BUFFER                = 0x10F6

/* cl_mem_info */
;const uint  CL_MEM_TYPE                                 = 0x1100
;const uint  CL_MEM_FLAGS                                = 0x1101
;const uint  CL_MEM_SIZE                                 = 0x1102
;const uint  CL_MEM_HOST_PTR                             = 0x1103
;const uint  CL_MEM_MAP_COUNT                            = 0x1104
;const uint  CL_MEM_REFERENCE_COUNT                      = 0x1105
;const uint  CL_MEM_CONTEXT                              = 0x1106
;const uint  CL_MEM_ASSOCIATED_MEMOBJECT                 = 0x1107
;const uint  CL_MEM_OFFSET                               = 0x1108

/* cl_image_info */
;const uint  CL_IMAGE_FORMAT                             = 0x1110
;const uint  CL_IMAGE_ELEMENT_SIZE                       = 0x1111
;const uint  CL_IMAGE_ROW_PITCH                          = 0x1112
;const uint  CL_IMAGE_SLICE_PITCH                        = 0x1113
;const uint  CL_IMAGE_WIDTH                              = 0x1114
;const uint  CL_IMAGE_HEIGHT                             = 0x1115
;const uint  CL_IMAGE_DEPTH                              = 0x1116
;const uint  CL_IMAGE_ARRAY_SIZE                         = 0x1117
;const uint  CL_IMAGE_BUFFER                             = 0x1118
;const uint  CL_IMAGE_NUM_MIP_LEVELS                     = 0x1119
;const uint  CL_IMAGE_NUM_SAMPLES                        = 0x111A

/* cl_addressing_mode */
;const uint  CL_ADDRESS_NONE                             = 0x1130
;const uint  CL_ADDRESS_CLAMP_TO_EDGE                    = 0x1131
;const uint  CL_ADDRESS_CLAMP                            = 0x1132
;const uint  CL_ADDRESS_REPEAT                           = 0x1133
;const uint  CL_ADDRESS_MIRRORED_REPEAT                  = 0x1134

/* cl_filter_mode */
;const uint  CL_FILTER_NEAREST                           = 0x1140
;const uint  CL_FILTER_LINEAR                            = 0x1141

/* cl_sampler_info */
;const uint  CL_SAMPLER_REFERENCE_COUNT                  = 0x1150
;const uint  CL_SAMPLER_CONTEXT                          = 0x1151
;const uint  CL_SAMPLER_NORMALIZED_COORDS                = 0x1152
;const uint  CL_SAMPLER_ADDRESSING_MODE                  = 0x1153
;const uint  CL_SAMPLER_FILTER_MODE                      = 0x1154

/* cl_map_flags - bitfield */
;const uint  CL_MAP_READ                                 = (1 << 0)
;const uint  CL_MAP_WRITE                                = (1 << 1)
;const uint  CL_MAP_WRITE_INVALIDATE_REGION              = (1 << 2)

/* cl_program_info */
;const uint  CL_PROGRAM_REFERENCE_COUNT                  = 0x1160
;const uint  CL_PROGRAM_CONTEXT                          = 0x1161
;const uint  CL_PROGRAM_NUM_DEVICES                      = 0x1162
;const uint  CL_PROGRAM_DEVICES                          = 0x1163
;const uint  CL_PROGRAM_SOURCE                           = 0x1164
;const uint  CL_PROGRAM_BINARY_SIZES                     = 0x1165
;const uint  CL_PROGRAM_BINARIES                         = 0x1166
;const uint  CL_PROGRAM_NUM_KERNELS                      = 0x1167
;const uint  CL_PROGRAM_KERNEL_NAMES                     = 0x1168

/* cl_program_build_info */
;const uint  CL_PROGRAM_BUILD_STATUS                     = 0x1181
;const uint  CL_PROGRAM_BUILD_OPTIONS                    = 0x1182
;const uint  CL_PROGRAM_BUILD_LOG                        = 0x1183
;const uint  CL_PROGRAM_BINARY_TYPE                      = 0x1184
    
/* cl_program_binary_type */
;const uint  CL_PROGRAM_BINARY_TYPE_NONE                 = 0x0
;const uint  CL_PROGRAM_BINARY_TYPE_COMPILED_OBJECT      = 0x1
;const uint  CL_PROGRAM_BINARY_TYPE_LIBRARY              = 0x2
;const uint  CL_PROGRAM_BINARY_TYPE_EXECUTABLE           = 0x4

/* cl_build_status */
;const uint  CL_BUILD_SUCCESS                            = 0
;const uint  CL_BUILD_NONE                               = -1
;const uint  CL_BUILD_ERROR                              = -2
;const uint  CL_BUILD_IN_PROGRESS                        = -3

/* cl_kernel_info */
;const uint  CL_KERNEL_FUNCTION_NAME                     = 0x1190
;const uint  CL_KERNEL_NUM_ARGS                          = 0x1191
;const uint  CL_KERNEL_REFERENCE_COUNT                   = 0x1192
;const uint  CL_KERNEL_CONTEXT                           = 0x1193
;const uint  CL_KERNEL_PROGRAM                           = 0x1194
;const uint  CL_KERNEL_ATTRIBUTES                        = 0x1195

/* cl_kernel_arg_info */
;const uint  CL_KERNEL_ARG_ADDRESS_QUALIFIER             = 0x1196
;const uint  CL_KERNEL_ARG_ACCESS_QUALIFIER              = 0x1197
;const uint  CL_KERNEL_ARG_TYPE_NAME                     = 0x1198
;const uint  CL_KERNEL_ARG_TYPE_QUALIFIER                = 0x1199
;const uint  CL_KERNEL_ARG_NAME                          = 0x119A

/* cl_kernel_arg_address_qualifier */
;const uint  CL_KERNEL_ARG_ADDRESS_GLOBAL                = 0x119B
;const uint  CL_KERNEL_ARG_ADDRESS_LOCAL                 = 0x119C
;const uint  CL_KERNEL_ARG_ADDRESS_CONSTANT              = 0x119D
;const uint  CL_KERNEL_ARG_ADDRESS_PRIVATE               = 0x119E

/* cl_kernel_arg_access_qualifier */
;const uint  CL_KERNEL_ARG_ACCESS_READ_ONLY              = 0x11A0
;const uint  CL_KERNEL_ARG_ACCESS_WRITE_ONLY             = 0x11A1
;const uint  CL_KERNEL_ARG_ACCESS_READ_WRITE             = 0x11A2
;const uint  CL_KERNEL_ARG_ACCESS_NONE                   = 0x11A3
    
/* cl_kernel_arg_type_qualifer */
;const uint  CL_KERNEL_ARG_TYPE_NONE                     = 0
;const uint  CL_KERNEL_ARG_TYPE_CONST                    = (1 << 0)
;const uint  CL_KERNEL_ARG_TYPE_RESTRICT                 = (1 << 1)
;const uint  CL_KERNEL_ARG_TYPE_VOLATILE                 = (1 << 2)

/* cl_kernel_work_group_info */
;const uint  CL_KERNEL_WORK_GROUP_SIZE                   = 0x11B0
;const uint  CL_KERNEL_COMPILE_WORK_GROUP_SIZE           = 0x11B1
;const uint  CL_KERNEL_LOCAL_MEM_SIZE                    = 0x11B2
;const uint  CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE = 0x11B3
;const uint  CL_KERNEL_PRIVATE_MEM_SIZE                  = 0x11B4
;const uint  CL_KERNEL_GLOBAL_WORK_SIZE                  = 0x11B5

/* cl_event_info  */
;const uint  CL_EVENT_COMMAND_QUEUE                      = 0x11D0
;const uint  CL_EVENT_COMMAND_TYPE                       = 0x11D1
;const uint  CL_EVENT_REFERENCE_COUNT                    = 0x11D2
;const uint  CL_EVENT_COMMAND_EXECUTION_STATUS           = 0x11D3
;const uint  CL_EVENT_CONTEXT                            = 0x11D4

/* cl_command_type */
;const uint  CL_COMMAND_NDRANGE_KERNEL                   = 0x11F0
;const uint  CL_COMMAND_TASK                             = 0x11F1
;const uint  CL_COMMAND_NATIVE_KERNEL                    = 0x11F2
;const uint  CL_COMMAND_READ_BUFFER                      = 0x11F3
;const uint  CL_COMMAND_WRITE_BUFFER                     = 0x11F4
;const uint  CL_COMMAND_COPY_BUFFER                      = 0x11F5
;const uint  CL_COMMAND_READ_IMAGE                       = 0x11F6
;const uint  CL_COMMAND_WRITE_IMAGE                      = 0x11F7
;const uint  CL_COMMAND_COPY_IMAGE                       = 0x11F8
;const uint  CL_COMMAND_COPY_IMAGE_TO_BUFFER             = 0x11F9
;const uint  CL_COMMAND_COPY_BUFFER_TO_IMAGE             = 0x11FA
;const uint  CL_COMMAND_MAP_BUFFER                       = 0x11FB
;const uint  CL_COMMAND_MAP_IMAGE                        = 0x11FC
;const uint  CL_COMMAND_UNMAP_MEM_OBJECT                 = 0x11FD
;const uint  CL_COMMAND_MARKER                           = 0x11FE
;const uint  CL_COMMAND_ACQUIRE_GL_OBJECTS               = 0x11FF
;const uint  CL_COMMAND_RELEASE_GL_OBJECTS               = 0x1200
;const uint  CL_COMMAND_READ_BUFFER_RECT                 = 0x1201
;const uint  CL_COMMAND_WRITE_BUFFER_RECT                = 0x1202
;const uint  CL_COMMAND_COPY_BUFFER_RECT                 = 0x1203
;const uint  CL_COMMAND_USER                             = 0x1204
;const uint  CL_COMMAND_BARRIER                          = 0x1205
;const uint  CL_COMMAND_MIGRATE_MEM_OBJECTS              = 0x1206
;const uint  CL_COMMAND_FILL_BUFFER                      = 0x1207
;const uint  CL_COMMAND_FILL_IMAGE                       = 0x1208

/* command execution status */
;const uint  CL_COMPLETE                                 = 0x0
;const uint  CL_RUNNING                                  = 0x1
;const uint  CL_SUBMITTED                                = 0x2
;const uint  CL_QUEUED                                   = 0x3

/* cl_buffer_create_type  */
;const uint  CL_BUFFER_CREATE_TYPE_REGION                = 0x1220

/* cl_profiling_info  */
;const uint  CL_PROFILING_COMMAND_QUEUED                 = 0x1280
;const uint  CL_PROFILING_COMMAND_SUBMIT                 = 0x1281
;const uint  CL_PROFILING_COMMAND_START                  = 0x1282
;const uint  CL_PROFILING_COMMAND_END                    = 0x1283

;;

/********************************************************************************************************/

extern(System)
{

/* Platform API */
cl_int
clGetPlatformIDs(cl_uint          /* num_entries */,
                 cl_platform_id * /* platforms */,
                 cl_uint *        /* num_platforms */); //CL_API_SUFFIX__VERSION_1_0;

cl_int 
clGetPlatformInfo(cl_platform_id   /* platform */, 
                  cl_platform_info /* param_name */,
                  size_t           /* param_value_size */, 
                  void *           /* param_value */,
                  size_t *         /* param_value_size_ret */); //CL_API_SUFFIX__VERSION_1_0;

/* Device APIs */
cl_int
clGetDeviceIDs(cl_platform_id   /* platform */,
               cl_device_type   /* device_type */, 
               cl_uint          /* num_entries */, 
               cl_device_id *   /* devices */, 
               cl_uint *        /* num_devices */); //CL_API_SUFFIX__VERSION_1_0;

cl_int
clGetDeviceInfo(cl_device_id    /* device */,
                cl_device_info  /* param_name */, 
                size_t          /* param_value_size */, 
                void *          /* param_value */,
                size_t *        /* param_value_size_ret */); //CL_API_SUFFIX__VERSION_1_0;
    
cl_int
clCreateSubDevices(cl_device_id                         /* in_device */,
                   const cl_device_partition_property * /* properties */,
                   cl_uint                              /* num_devices */,
                   cl_device_id *                       /* out_devices */,
                   cl_uint *                            /* num_devices_ret */);// CL_API_SUFFIX__VERSION_1_2;

cl_int
clRetainDevice(cl_device_id /* device */); // CL_API_SUFFIX__VERSION_1_2;
    
cl_int
clReleaseDevice(cl_device_id /* device */); // CL_API_SUFFIX__VERSION_1_2;
    
/* Context APIs  */
cl_context
clCreateContext(const cl_context_properties * /* properties */,
                cl_uint                 /* num_devices */,
                const cl_device_id *    /* devices */,
                void (CL_CALLBACK * /* pfn_notify */)(const char *, const void *, size_t, void *),
                void *                  /* user_data */,
                cl_int *                /* errcode_ret */); // CL_API_SUFFIX__VERSION_1_0;

cl_context
clCreateContextFromType(const cl_context_properties * /* properties */,
                        cl_device_type          /* device_type */,
                        void (CL_CALLBACK *     /* pfn_notify*/ )(const char *, const void *, size_t, void *),
                        void *                  /* user_data */,
                        cl_int *                /* errcode_ret */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clRetainContext(cl_context /* context */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clReleaseContext(cl_context /* context */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clGetContextInfo(cl_context         /* context */, 
                 cl_context_info    /* param_name */, 
                 size_t             /* param_value_size */, 
                 void *             /* param_value */, 
                 size_t *           /* param_value_size_ret */); // CL_API_SUFFIX__VERSION_1_0;

/* Command Queue APIs */
cl_command_queue
clCreateCommandQueue(cl_context                     /* context */, 
                     cl_device_id                   /* device */, 
                     cl_command_queue_properties    /* properties */,
                     cl_int *                       /* errcode_ret */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clRetainCommandQueue(cl_command_queue /* command_queue */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clReleaseCommandQueue(cl_command_queue /* command_queue */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clGetCommandQueueInfo(cl_command_queue      /* command_queue */,
                      cl_command_queue_info /* param_name */,
                      size_t                /* param_value_size */,
                      void *                /* param_value */,
                      size_t *              /* param_value_size_ret */); // CL_API_SUFFIX__VERSION_1_0;

/* Memory Object APIs */
cl_mem
clCreateBuffer(cl_context   /* context */,
               cl_mem_flags /* flags */,
               size_t       /* size */,
               void *       /* host_ptr */,
               cl_int *     /* errcode_ret */); // CL_API_SUFFIX__VERSION_1_0;

cl_mem
clCreateSubBuffer(cl_mem                   /* buffer */,
                  cl_mem_flags             /* flags */,
                  cl_buffer_create_type    /* buffer_create_type */,
                  const void *             /* buffer_create_info */,
                  cl_int *                 /* errcode_ret */); // CL_API_SUFFIX__VERSION_1_1;

cl_mem
clCreateImage(cl_context              /* context */,
              cl_mem_flags            /* flags */,
              const cl_image_format * /* image_format */,
              const cl_image_desc *   /* image_desc */, 
              void *                  /* host_ptr */,
              cl_int *                /* errcode_ret */); // CL_API_SUFFIX__VERSION_1_2;
                        
cl_int
clRetainMemObject(cl_mem /* memobj */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clReleaseMemObject(cl_mem /* memobj */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clGetSupportedImageFormats(cl_context           /* context */,
                           cl_mem_flags         /* flags */,
                           cl_mem_object_type   /* image_type */,
                           cl_uint              /* num_entries */,
                           cl_image_format *    /* image_formats */,
                           cl_uint *            /* num_image_formats */); // CL_API_SUFFIX__VERSION_1_0;
                                    
cl_int
clGetMemObjectInfo(cl_mem           /* memobj */,
                   cl_mem_info      /* param_name */, 
                   size_t           /* param_value_size */,
                   void *           /* param_value */,
                   size_t *         /* param_value_size_ret */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clGetImageInfo(cl_mem           /* image */,
               cl_image_info    /* param_name */, 
               size_t           /* param_value_size */,
               void *           /* param_value */,
               size_t *         /* param_value_size_ret */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clSetMemObjectDestructorCallback(  cl_mem /* memobj */, 
                                    void (CL_CALLBACK * /*pfn_notify*/)( cl_mem /* memobj */, void* /*user_data*/), 
                                    void * /*user_data */ );//             CL_API_SUFFIX__VERSION_1_1;  

/* Sampler APIs */
cl_sampler
clCreateSampler(cl_context          /* context */,
                cl_bool             /* normalized_coords */, 
                cl_addressing_mode  /* addressing_mode */, 
                cl_filter_mode      /* filter_mode */,
                cl_int *            /* errcode_ret */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clRetainSampler(cl_sampler /* sampler */); // CL_API_SUFFIX__VERSION_1_0;

cl_int
clReleaseSampler(cl_sampler /* sampler */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clGetSamplerInfo(cl_sampler         /* sampler */,
                 cl_sampler_info    /* param_name */,
                 size_t             /* param_value_size */,
                 void *             /* param_value */,
                 size_t *           /* param_value_size_ret */);// CL_API_SUFFIX__VERSION_1_0;
                            
/* Program Object APIs  */
cl_program
clCreateProgramWithSource(cl_context        /* context */,
                          cl_uint           /* count */,
                          const char **     /* strings */,
                          const size_t *    /* lengths */,
                          cl_int *          /* errcode_ret */);// CL_API_SUFFIX__VERSION_1_0;

cl_program
clCreateProgramWithBinary(cl_context                     /* context */,
                          cl_uint                        /* num_devices */,
                          const cl_device_id *           /* device_list */,
                          const size_t *                 /* lengths */,
                          const unsigned char **         /* binaries */,
                          cl_int *                       /* binary_status */,
                          cl_int *                       /* errcode_ret */);// CL_API_SUFFIX__VERSION_1_0;

cl_program
clCreateProgramWithBuiltInKernels(cl_context            /* context */,
                                  cl_uint               /* num_devices */,
                                  const cl_device_id *  /* device_list */,
                                  const char *          /* kernel_names */,
                                  cl_int *              /* errcode_ret */);// CL_API_SUFFIX__VERSION_1_2;

cl_int
clRetainProgram(cl_program /* program */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clReleaseProgram(cl_program /* program */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clBuildProgram(cl_program           /* program */,
               cl_uint              /* num_devices */,
               const cl_device_id * /* device_list */,
               const char *         /* options */, 
               void (CL_CALLBACK *  /* pfn_notify */)(cl_program /* program */, void * /* user_data */),
               void *               /* user_data */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clCompileProgram(cl_program           /* program */,
                 cl_uint              /* num_devices */,
                 const cl_device_id * /* device_list */,
                 const char *         /* options */, 
                 cl_uint              /* num_input_headers */,
                 const cl_program *   /* input_headers */,
                 const char **        /* header_include_names */,
                 void (CL_CALLBACK *  /* pfn_notify */)(cl_program /* program */, void * /* user_data */),
                 void *               /* user_data */);// CL_API_SUFFIX__VERSION_1_2;

cl_program
clLinkProgram(cl_context           /* context */,
              cl_uint              /* num_devices */,
              const cl_device_id * /* device_list */,
              const char *         /* options */, 
              cl_uint              /* num_input_programs */,
              const cl_program *   /* input_programs */,
              void (CL_CALLBACK *  /* pfn_notify */)(cl_program /* program */, void * /* user_data */),
              void *               /* user_data */,
              cl_int *             /* errcode_ret */ );// CL_API_SUFFIX__VERSION_1_2;


cl_int
clUnloadPlatformCompiler(cl_platform_id /* platform */);// CL_API_SUFFIX__VERSION_1_2;

cl_int
clGetProgramInfo(cl_program         /* program */,
                 cl_program_info    /* param_name */,
                 size_t             /* param_value_size */,
                 void *             /* param_value */,
                 size_t *           /* param_value_size_ret */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clGetProgramBuildInfo(cl_program            /* program */,
                      cl_device_id          /* device */,
                      cl_program_build_info /* param_name */,
                      size_t                /* param_value_size */,
                      void *                /* param_value */,
                      size_t *              /* param_value_size_ret */);// CL_API_SUFFIX__VERSION_1_0;
                            
/* Kernel Object APIs */
cl_kernel
clCreateKernel(cl_program      /* program */,
               const char *    /* kernel_name */,
               cl_int *        /* errcode_ret */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clCreateKernelsInProgram(cl_program     /* program */,
                         cl_uint        /* num_kernels */,
                         cl_kernel *    /* kernels */,
                         cl_uint *      /* num_kernels_ret */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clRetainKernel(cl_kernel    /* kernel */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clReleaseKernel(cl_kernel   /* kernel */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clSetKernelArg(cl_kernel    /* kernel */,
               cl_uint      /* arg_index */,
               size_t       /* arg_size */,
               const void * /* arg_value */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clGetKernelInfo(cl_kernel       /* kernel */,
                cl_kernel_info  /* param_name */,
                size_t          /* param_value_size */,
                void *          /* param_value */,
                size_t *        /* param_value_size_ret */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clGetKernelArgInfo(cl_kernel       /* kernel */,
                   cl_uint         /* arg_indx */,
                   cl_kernel_arg_info  /* param_name */,
                   size_t          /* param_value_size */,
                   void *          /* param_value */,
                   size_t *        /* param_value_size_ret */);// CL_API_SUFFIX__VERSION_1_2;

cl_int
clGetKernelWorkGroupInfo(cl_kernel                  /* kernel */,
                         cl_device_id               /* device */,
                         cl_kernel_work_group_info  /* param_name */,
                         size_t                     /* param_value_size */,
                         void *                     /* param_value */,
                         size_t *                   /* param_value_size_ret */);// CL_API_SUFFIX__VERSION_1_0;

/* Event Object APIs */
cl_int
clWaitForEvents(cl_uint             /* num_events */,
                const cl_event *    /* event_list */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clGetEventInfo(cl_event         /* event */,
               cl_event_info    /* param_name */,
               size_t           /* param_value_size */,
               void *           /* param_value */,
               size_t *         /* param_value_size_ret */);// CL_API_SUFFIX__VERSION_1_0;
                            
cl_event
clCreateUserEvent(cl_context    /* context */,
                  cl_int *      /* errcode_ret */);// CL_API_SUFFIX__VERSION_1_1;               
                            
cl_int
clRetainEvent(cl_event /* event */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clReleaseEvent(cl_event /* event */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clSetUserEventStatus(cl_event   /* event */,
                     cl_int     /* execution_status */);// CL_API_SUFFIX__VERSION_1_1;
                     
cl_int
clSetEventCallback( cl_event    /* event */,
                    cl_int      /* command_exec_callback_type */,
                    void (CL_CALLBACK * /* pfn_notify */)(cl_event, cl_int, void *),
                    void *      /* user_data */);// CL_API_SUFFIX__VERSION_1_1;

/* Profiling APIs */
cl_int
clGetEventProfilingInfo(cl_event            /* event */,
                        cl_profiling_info   /* param_name */,
                        size_t              /* param_value_size */,
                        void *              /* param_value */,
                        size_t *            /* param_value_size_ret */);// CL_API_SUFFIX__VERSION_1_0;
                                
/* Flush and Finish APIs */
cl_int
clFlush(cl_command_queue /* command_queue */) ;//CL_API_SUFFIX__VERSION_1_0;

cl_int
clFinish(cl_command_queue /* command_queue */) ;//CL_API_SUFFIX__VERSION_1_0;

/* Enqueued Commands APIs */
cl_int
clEnqueueReadBuffer(cl_command_queue    /* command_queue */,
                    cl_mem              /* buffer */,
                    cl_bool             /* blocking_read */,
                    size_t              /* offset */,
                    size_t              /* size */, 
                    void *              /* ptr */,
                    cl_uint             /* num_events_in_wait_list */,
                    const cl_event *    /* event_wait_list */,
                    cl_event *          /* event */);// CL_API_SUFFIX__VERSION_1_0;
                            
cl_int
clEnqueueReadBufferRect(cl_command_queue    /* command_queue */,
                        cl_mem              /* buffer */,
                        cl_bool             /* blocking_read */,
                        const size_t *      /* buffer_offset */,
                        const size_t *      /* host_offset */, 
                        const size_t *      /* region */,
                        size_t              /* buffer_row_pitch */,
                        size_t              /* buffer_slice_pitch */,
                        size_t              /* host_row_pitch */,
                        size_t              /* host_slice_pitch */,                        
                        void *              /* ptr */,
                        cl_uint             /* num_events_in_wait_list */,
                        const cl_event *    /* event_wait_list */,
                        cl_event *          /* event */);// CL_API_SUFFIX__VERSION_1_1;
                            
cl_int
clEnqueueWriteBuffer(cl_command_queue   /* command_queue */, 
                     cl_mem             /* buffer */, 
                     cl_bool            /* blocking_write */, 
                     size_t             /* offset */, 
                     size_t             /* size */, 
                     const void *       /* ptr */, 
                     cl_uint            /* num_events_in_wait_list */, 
                     const cl_event *   /* event_wait_list */, 
                     cl_event *         /* event */);// CL_API_SUFFIX__VERSION_1_0;
                            
cl_int
clEnqueueWriteBufferRect(cl_command_queue    /* command_queue */,
                         cl_mem              /* buffer */,
                         cl_bool             /* blocking_write */,
                         const size_t *      /* buffer_offset */,
                         const size_t *      /* host_offset */, 
                         const size_t *      /* region */,
                         size_t              /* buffer_row_pitch */,
                         size_t              /* buffer_slice_pitch */,
                         size_t              /* host_row_pitch */,
                         size_t              /* host_slice_pitch */,                        
                         const void *        /* ptr */,
                         cl_uint             /* num_events_in_wait_list */,
                         const cl_event *    /* event_wait_list */,
                         cl_event *          /* event */);// CL_API_SUFFIX__VERSION_1_1;
                            
cl_int
clEnqueueFillBuffer(cl_command_queue   /* command_queue */,
                    cl_mem             /* buffer */, 
                    const void *       /* pattern */, 
                    size_t             /* pattern_size */, 
                    size_t             /* offset */, 
                    size_t             /* size */, 
                    cl_uint            /* num_events_in_wait_list */, 
                    const cl_event *   /* event_wait_list */, 
                    cl_event *         /* event */);// CL_API_SUFFIX__VERSION_1_2;
                            
cl_int
clEnqueueCopyBuffer(cl_command_queue    /* command_queue */, 
                    cl_mem              /* src_buffer */,
                    cl_mem              /* dst_buffer */, 
                    size_t              /* src_offset */,
                    size_t              /* dst_offset */,
                    size_t              /* size */, 
                    cl_uint             /* num_events_in_wait_list */,
                    const cl_event *    /* event_wait_list */,
                    cl_event *          /* event */);// CL_API_SUFFIX__VERSION_1_0;
                            
cl_int
clEnqueueCopyBufferRect(cl_command_queue    /* command_queue */, 
                        cl_mem              /* src_buffer */,
                        cl_mem              /* dst_buffer */, 
                        const size_t *      /* src_origin */,
                        const size_t *      /* dst_origin */,
                        const size_t *      /* region */, 
                        size_t              /* src_row_pitch */,
                        size_t              /* src_slice_pitch */,
                        size_t              /* dst_row_pitch */,
                        size_t              /* dst_slice_pitch */,
                        cl_uint             /* num_events_in_wait_list */,
                        const cl_event *    /* event_wait_list */,
                        cl_event *          /* event */);// CL_API_SUFFIX__VERSION_1_1;
                            
cl_int
clEnqueueReadImage(cl_command_queue     /* command_queue */,
                   cl_mem               /* image */,
                   cl_bool              /* blocking_read */, 
                   const size_t *       /* origin[3] */,
                   const size_t *       /* region[3] */,
                   size_t               /* row_pitch */,
                   size_t               /* slice_pitch */, 
                   void *               /* ptr */,
                   cl_uint              /* num_events_in_wait_list */,
                   const cl_event *     /* event_wait_list */,
                   cl_event *           /* event */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clEnqueueWriteImage(cl_command_queue    /* command_queue */,
                    cl_mem              /* image */,
                    cl_bool             /* blocking_write */, 
                    const size_t *      /* origin[3] */,
                    const size_t *      /* region[3] */,
                    size_t              /* input_row_pitch */,
                    size_t              /* input_slice_pitch */, 
                    const void *        /* ptr */,
                    cl_uint             /* num_events_in_wait_list */,
                    const cl_event *    /* event_wait_list */,
                    cl_event *          /* event */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clEnqueueFillImage(cl_command_queue   /* command_queue */,
                   cl_mem             /* image */, 
                   const void *       /* fill_color */, 
                   const size_t *     /* origin[3] */, 
                   const size_t *     /* region[3] */, 
                   cl_uint            /* num_events_in_wait_list */, 
                   const cl_event *   /* event_wait_list */, 
                   cl_event *         /* event */);// CL_API_SUFFIX__VERSION_1_2;
                            
cl_int
clEnqueueCopyImage(cl_command_queue     /* command_queue */,
                   cl_mem               /* src_image */,
                   cl_mem               /* dst_image */, 
                   const size_t *       /* src_origin[3] */,
                   const size_t *       /* dst_origin[3] */,
                   const size_t *       /* region[3] */, 
                   cl_uint              /* num_events_in_wait_list */,
                   const cl_event *     /* event_wait_list */,
                   cl_event *           /* event */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clEnqueueCopyImageToBuffer(cl_command_queue /* command_queue */,
                           cl_mem           /* src_image */,
                           cl_mem           /* dst_buffer */, 
                           const size_t *   /* src_origin[3] */,
                           const size_t *   /* region[3] */, 
                           size_t           /* dst_offset */,
                           cl_uint          /* num_events_in_wait_list */,
                           const cl_event * /* event_wait_list */,
                           cl_event *       /* event */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clEnqueueCopyBufferToImage(cl_command_queue /* command_queue */,
                           cl_mem           /* src_buffer */,
                           cl_mem           /* dst_image */, 
                           size_t           /* src_offset */,
                           const size_t *   /* dst_origin[3] */,
                           const size_t *   /* region[3] */, 
                           cl_uint          /* num_events_in_wait_list */,
                           const cl_event * /* event_wait_list */,
                           cl_event *       /* event */);// CL_API_SUFFIX__VERSION_1_0;

void *
clEnqueueMapBuffer(cl_command_queue /* command_queue */,
                   cl_mem           /* buffer */,
                   cl_bool          /* blocking_map */, 
                   cl_map_flags     /* map_flags */,
                   size_t           /* offset */,
                   size_t           /* size */,
                   cl_uint          /* num_events_in_wait_list */,
                   const cl_event * /* event_wait_list */,
                   cl_event *       /* event */,
                   cl_int *         /* errcode_ret */);// CL_API_SUFFIX__VERSION_1_0;

void *
clEnqueueMapImage(cl_command_queue  /* command_queue */,
                  cl_mem            /* image */, 
                  cl_bool           /* blocking_map */, 
                  cl_map_flags      /* map_flags */, 
                  const size_t *    /* origin[3] */,
                  const size_t *    /* region[3] */,
                  size_t *          /* image_row_pitch */,
                  size_t *          /* image_slice_pitch */,
                  cl_uint           /* num_events_in_wait_list */,
                  const cl_event *  /* event_wait_list */,
                  cl_event *        /* event */,
                  cl_int *          /* errcode_ret */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clEnqueueUnmapMemObject(cl_command_queue /* command_queue */,
                        cl_mem           /* memobj */,
                        void *           /* mapped_ptr */,
                        cl_uint          /* num_events_in_wait_list */,
                        const cl_event *  /* event_wait_list */,
                        cl_event *        /* event */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clEnqueueMigrateMemObjects(cl_command_queue       /* command_queue */,
                           cl_uint                /* num_mem_objects */,
                           const cl_mem *         /* mem_objects */,
                           cl_mem_migration_flags /* flags */,
                           cl_uint                /* num_events_in_wait_list */,
                           const cl_event *       /* event_wait_list */,
                           cl_event *             /* event */);// CL_API_SUFFIX__VERSION_1_2;

cl_int
clEnqueueNDRangeKernel(cl_command_queue /* command_queue */,
                       cl_kernel        /* kernel */,
                       cl_uint          /* work_dim */,
                       const size_t *   /* global_work_offset */,
                       const size_t *   /* global_work_size */,
                       const size_t *   /* local_work_size */,
                       cl_uint          /* num_events_in_wait_list */,
                       const cl_event * /* event_wait_list */,
                       cl_event *       /* event */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clEnqueueTask(cl_command_queue  /* command_queue */,
              cl_kernel         /* kernel */,
              cl_uint           /* num_events_in_wait_list */,
              const cl_event *  /* event_wait_list */,
              cl_event *        /* event */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clEnqueueNativeKernel(cl_command_queue  /* command_queue */,
					  void (CL_CALLBACK * /*user_func*/)(void *), 
                      void *            /* args */,
                      size_t            /* cb_args */, 
                      cl_uint           /* num_mem_objects */,
                      const cl_mem *    /* mem_list */,
                      const void **     /* args_mem_loc */,
                      cl_uint           /* num_events_in_wait_list */,
                      const cl_event *  /* event_wait_list */,
                      cl_event *        /* event */);// CL_API_SUFFIX__VERSION_1_0;

cl_int
clEnqueueMarkerWithWaitList(cl_command_queue /* command_queue */,
                            cl_uint           /* num_events_in_wait_list */,
                            const cl_event *  /* event_wait_list */,
                            cl_event *        /* event */);// CL_API_SUFFIX__VERSION_1_2;

cl_int
clEnqueueBarrierWithWaitList(cl_command_queue /* command_queue */,
                             cl_uint           /* num_events_in_wait_list */,
                             const cl_event *  /* event_wait_list */,
                             cl_event *        /* event */);// CL_API_SUFFIX__VERSION_1_2;


/* Extension function access
 *
 * Returns the extension function address for the given function name,
 * or NULL if a valid function can not be found.  The client must
 * check to make sure the address is not NULL, before using or 
 * calling the returned function address.
 */
void * 
clGetExtensionFunctionAddressForPlatform(cl_platform_id /* platform */,
                                         const char *   /* func_name */);// CL_API_SUFFIX__VERSION_1_2;
    

/* Deprecated OpenCL 1.1 APIs */

cl_mem
clCreateImage2D(cl_context              /* context */,
                cl_mem_flags            /* flags */,
                const cl_image_format * /* image_format */,
                size_t                  /* image_width */,
                size_t                  /* image_height */,
                size_t                  /* image_row_pitch */, 
                void *                  /* host_ptr */,
                cl_int *                /* errcode_ret */);// CL_EXT_SUFFIX__VERSION_1_1_DEPRECATED;
    
cl_mem
clCreateImage3D(cl_context              /* context */,
                cl_mem_flags            /* flags */,
                const cl_image_format * /* image_format */,
                size_t                  /* image_width */, 
                size_t                  /* image_height */,
                size_t                  /* image_depth */, 
                size_t                  /* image_row_pitch */, 
                size_t                  /* image_slice_pitch */, 
                void *                  /* host_ptr */,
                cl_int *                /* errcode_ret */);// CL_EXT_SUFFIX__VERSION_1_1_DEPRECATED;
    
cl_int
clEnqueueMarker(cl_command_queue    /* command_queue */,
                cl_event *          /* event */) CL_EXT_SUFFIX__VERSION_1_1_DEPRECATED;
    
cl_int
clEnqueueWaitForEvents(cl_command_queue /* command_queue */,
                        cl_uint          /* num_events */,
                        const cl_event * /* event_list */);// CL_EXT_SUFFIX__VERSION_1_1_DEPRECATED;
    
cl_int
clEnqueueBarrier(cl_command_queue /* command_queue */);// CL_EXT_SUFFIX__VERSION_1_1_DEPRECATED;

// I don't use these

//cl_int
//clUnloadCompiler(void);// CL_EXT_SUFFIX__VERSION_1_1_DEPRECATED;
    
//void *
//clGetExtensionFunctionAddress(const char * /* func_name */);// CL_EXT_SUFFIX__VERSION_1_1_DEPRECATED;
}