@_exported import os
import Foundation

extension OSLog {
    
    static var subsystem = Bundle.main.bundleIdentifier!
    
    public static let debug: OSLog = {
        #if DEBUG
        return OSLog(subsystem: subsystem, category: "debug")
        #else
        return OSLog.disabled
        #endif
    }()
    
    public static let layout      = OSLog(subsystem: subsystem, category: "layout")
    public static let logic       = OSLog(subsystem: subsystem, category: "logic")
    public static let interaction = OSLog(subsystem: subsystem, category: "interaction")
    
}
