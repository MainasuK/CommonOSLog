import XCTest
@testable import CommonOSLog

final class CommonOSLogTests: XCTestCase {
    func testExample() {
        let logger = Logger.create(system: "UnitTests", category: "Test")
        logger.info("\((#file as NSString).lastPathComponent, privacy: .public)[\(#line, privacy: .public)], \(#function, privacy: .public): Hello")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
