
#if __linux__ && !__ANDROID__

#else
    // This code should be unreachable when not the target 
    // platform if Xcode is properly supporting SPM target 
    // conditionals
    #error This module is Linux Only!
#endif
