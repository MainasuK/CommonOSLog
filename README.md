# CommonOSLog
![Swift](https://github.com/MainasuK/CommonOSLog/workflows/Swift/badge.svg)

Common log tool using the os.framework

## Usage

### Swift Package Manager

```swift
.package(url: "https://github.com/mainasuk/CommonOSLog.git", from: "1.0.0"),
```

### Example 


#### iOS 14 (since 1.0.0)
```swift

// Debug:
// .trace, .info
// Info:
// .info
// Default:
// .log, .notice
// Error
// .error, .warning
// Fault or Bug:
// .critical, .fault

import os.log

let logger = Logger.create(system: "UnitTests", category: "Test")
logger.info("\((#file as NSString).lastPathComponent, privacy: .public)[\(#line, privacy: .public)], \(#function, privacy: .public): Hello")

// Output:
// … [Test] CommonOSLogTests.swift[7], testExample(): Hello

```

#### iOS 12 ~ iOS 13 (since 0.1.0)
```swift
import os.log

os_log(.info, log: .debug, "%{public}s[%{public}ld], %{public}s: deinit", ((#file as NSString).lastPathComponent), #line, #function)
os_log(.info, log: .layout, "%{public}s[%{public}ld], %{public}s: view size: %s", ((#file as NSString).lastPathComponent), #line, #function, view.size.debugDescription)
os_log(.info, log: .logic, "%{public}s[%{public}ld], %{public}s: dataSource updated", ((#file as NSString).lastPathComponent), #line, #function)
os_log(.info, log: .interaction, "%{public}s[%{public}ld], %{public}s: user input: %s", ((#file as NSString).lastPathComponent), #line, #function, textField.text.debugDescription)
```

## License
MIT license
