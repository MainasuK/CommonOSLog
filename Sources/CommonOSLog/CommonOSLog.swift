@_exported import os
import Foundation

extension OSLog {
    
    public static var subsystem = Bundle.main.bundleIdentifier!
    
    public static let debug: OSLog = {
        #if DEBUG
        return OSLog(subsystem: subsystem + ".debug", category: "debug")
        #else
        return OSLog.disabled
        #endif
    }()
    
    public static let layout      = OSLog(subsystem: subsystem + ".layout", category: "layout")
    public static let logic       = OSLog(subsystem: subsystem + ".logic", category: "logic")
    public static let interaction = OSLog(subsystem: subsystem + ".interaction", category: "interaction")
    
}
