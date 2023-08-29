#if __APPLE__
    #include <TargetConditionals.h>
#endif

#if TARGET_OS_IPHONE && !TARGET_OS_MACCATALYST

#else
    #error This module is iOS Only!
#endif
