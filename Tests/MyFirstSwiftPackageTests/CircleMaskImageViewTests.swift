import UIKit
import XCTest
@testable import MyFirstSwiftPackage

final class CircleMaskImageViewTests: XCTestCase {

    func test_CircleImageView_calculateCornerRadus() {
        XCTAssertEqual(CircleMaskImageView.calculateCornerRadius(indicatedArea: CGRect(x: 0, y: 0, width: 300, height: 200)), CGFloat(100), "widthとheightのうち、小さい方の半分のサイズが返される（width/2）")
        XCTAssertEqual(CircleMaskImageView.calculateCornerRadius(indicatedArea: CGRect(x: 0, y: 0, width: 300, height: 400)), CGFloat(150), "widthとheightのうち、小さい方の半分のサイズが返される（height/2）")
    }
}
