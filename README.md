# CommonOSLog

Common log tools from os.framework

## Usage

### Swift Package Manager

```swift
.package(url: "https://github.com/mainasuk/CommonOSLog.git", from: "0.1.0"),
```

### Example 
```swift
os_log(.info, log: .logic, "%{public}s[%{public}ld], %{public}s: %s", ((#file as NSString).lastPathComponent), #line, #function, "Hello")
```

## License
MIT license