
#if __APPLE__
    #include <TargetConditionals.h>
#endif

#if TARGET_OS_TV

#else
    // This code should be unreachable when not the target 
    // platform if Xcode is properly supporting SPM target 
    // conditionals
    #error This module is tvOS Only!
#endif
