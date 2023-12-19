import XCTest
@testable import LanguageDetect

final class LanguageDetectTests: XCTestCase {
    func testGetResourceData() throws {
        let farsi = try ResourceManager.getResource(name: "fa")
        XCTAssertGreaterThan(farsi.frequency.count, 0)
        XCTAssertGreaterThan(farsi.nWords.count, 0)
        XCTAssertEqual(farsi.name, "fa")
    }
}
