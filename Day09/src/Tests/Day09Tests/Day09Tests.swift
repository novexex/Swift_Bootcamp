import XCTest
@testable import Day09

final class Day09Tests: XCTestCase {
    
    var sut: SimpleCalculator!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = SimpleCalculator()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testCircleArea() throws {
        XCTAssertEqual(sut.circleArea(radius: 3.14), 30.959144, accuracy: 0.0000001)
    }
    
    func testFibonacci1() throws {
        XCTAssertEqual(sut.fibonacci(n: 0), 0)
    }
    
    func testFibonacci2() throws {
        XCTAssertEqual(sut.fibonacci(n: 2), 1)
    }
    
    func testFibonacci3() throws {
        XCTAssertEqual(sut.fibonacci(n: 3), 2)
    }
    
    func testFahrenheit() throws {
        XCTAssertEqual(sut.fahrenheit(celcius: 10), 50)
    }
}
