@_exported import os
import Foundation

extension Logger {

    public static var subsystem = Bundle.main.bundleIdentifier!

    public static func create(system: String, category: String) -> Logger {
        return Logger(
            subsystem: subsystem + "." + system,
            category: category
        )
    }
    
    

}
