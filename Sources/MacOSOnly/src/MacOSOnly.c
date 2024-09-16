
#if __APPLE__
    #include <TargetConditionals.h>
#endif

#if TARGET_OS_MAC

#else
    // This code should be unreachable when not the target 
    // platform if Xcode is properly supporting SPM target 
    // conditionals
    #error This module is macOS Only!
#endif
