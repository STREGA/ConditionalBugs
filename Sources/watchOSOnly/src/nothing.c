#if __APPLE__
    #include <TargetConditionals.h>
#endif

#if TARGET_OS_WATCH

#else
    #error watchOS Only
#endif
