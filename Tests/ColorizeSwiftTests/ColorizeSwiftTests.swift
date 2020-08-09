import XCTest
@testable import ColorizeSwift

final class ColorizeSwiftTests: XCTestCase {
    func testUncolorized() {
        let referenceString = "Luke, I'm your father!!!"
        let colorizedReferenceString = referenceString.bold().italic().underline().foregroundColor(.red).backgroundColor(.black)
        let actualString = colorizedReferenceString.uncolorized()
        
        XCTAssertEqual(referenceString, actualString)
    }

    static var allTests = [
        ("testUncolorized", testUncolorized),
    ]
}
