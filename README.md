# CommonOSLog
![Swift](https://github.com/MainasuK/CommonOSLog/workflows/Swift/badge.svg)

Common log tool using the os.framework

## Usage

### Swift Package Manager

```swift
.package(url: "https://github.com/mainasuk/CommonOSLog.git", from: "0.1.0"),
```

### Example 
```swift
os_log(.info, log: .debug, "%{public}s[%{public}ld], %{public}s: deinit", ((#file as NSString).lastPathComponent), #line, #function)
os_log(.info, log: .layout, "%{public}s[%{public}ld], %{public}s: view size: %s", ((#file as NSString).lastPathComponent), #line, #function, view.size.debugDescription)
os_log(.info, log: .logic, "%{public}s[%{public}ld], %{public}s: dataSource updated", ((#file as NSString).lastPathComponent), #line, #function)
os_log(.info, log: .interaction, "%{public}s[%{public}ld], %{public}s: user input: %s", ((#file as NSString).lastPathComponent), #line, #function, textField.text.debugDescription)
```

## License
MIT license