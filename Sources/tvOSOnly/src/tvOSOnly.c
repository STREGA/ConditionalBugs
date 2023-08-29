
#if __APPLE__
    #include <TargetConditionals.h>
#endif

#if TARGET_OS_TV

#else
    #error This module is tvOS Only!
#endif
