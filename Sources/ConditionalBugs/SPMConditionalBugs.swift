// The Swift Programming Language
// https://docs.swift.org/swift-book

#if os(Android)
import AndroidOnly
#endif

#if os(iOS)
import iOSOnly
#endif

#if os(Linux)
import LinuxOnly
#endif

#if os(macOS)
import MacOSOnly
#endif

#if os(tvOS)
import tvOSOnly
#endif

#if os(WASI)
import WASIOnly
#endif

#if os(Windows)
import WindowsOnly
#endif
