import XCTest
@testable import CommonOSLog

final class CommonOSLogTests: XCTestCase {
    func testExample() {
        os_log(.info, log: .logic, "%{public}s[%{public}ld], %{public}s: %s", ((#file as NSString).lastPathComponent), #line, #function, "Hello")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
