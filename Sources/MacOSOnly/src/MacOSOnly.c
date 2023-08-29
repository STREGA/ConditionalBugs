
#if __APPLE__
    #include <TargetConditionals.h>
#endif

#if TARGET_OS_MAC

#else
    #error This module is macOS Only!
#endif
