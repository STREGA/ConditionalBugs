// The Swift Programming Language
// https://docs.swift.org/swift-book

#if os(Android)
import AndroidOnly
#warning("Imported AndroidOnly")
#endif

#if os(iOS) && !targetEnvironment(macCatalyst)
import iOSOnly
#warning("Imported iOSOnly")
#endif

#if os(Linux)
import LinuxOnly
#warning("Imported LinuxOnly")
#endif

#if targetEnvironment(macCatalyst)
import MacCatalystOnly
#warning("Imported MacCatalystOnly")
#endif

#if os(macOS)
import MacOSOnly
#warning("Imported MacOSOnly")
#endif

#if os(tvOS)
import tvOSOnly
#warning("Imported tvOnly")
#endif

#if os(WASI)
import WASIOnly
#warning("Imported WASIOnly")
#endif

#if os(Windows)
import WindowsOnly
#warning("Imported WindowsOnly")
#endif
