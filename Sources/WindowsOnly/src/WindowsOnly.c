
#if WIN32 || _WIN32 || __WIN32__ || __NT__

#else
    // This code should be unreachable when not the target 
    // platform if Xcode is properly supporting SPM target 
    // conditionals
    #error This module is Windows Only!
#endif
