    import XCTest
    @testable import FucktionalSwift

    public final class FunctionalSwiftTests: XCTestCase {
        func testEitherOperationForTheEitherWithLeftElement() {
            let bar: Either<String, Int> = .left("foo")
            let foo = bar.either(
                { "left \($0)" },
                { "right \($0)" }
            )
            let expected = "left foo"
            XCTAssertEqual(foo, expected)
        }

        func testEitherOperationForTheEitherWithRightElement() {
            let bar: Either<String, Int> = .right(10)
            let foo = bar.either(
                { "left \($0)" },
                { "right \($0)" }
            )
            let expected = "right 10"
            XCTAssertEqual(foo, expected)
        }

        func testIdentity() {
            let a = 5
            let b = "Test"

            XCTAssertEqual(a, id(a))
            XCTAssertEqual(b, id(b))
        }
    }

    public final class CollectionSplitTests: XCTestCase {
        let emptyData: [Int] = []
        let data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

        func testSplitOn() {
            XCTAssert(data.split(on: 5).elementsEqual([[1, 2, 3, 4], [6, 7, 8, 9, 0]], by: ==))
        }

        func testSplitOneOf() {
            XCTAssert(data.split(oneOf: [5, 9]).elementsEqual([[1, 2, 3, 4], [6, 7, 8], [0]], by: ==))

        }

        func testChunksOf() {
            XCTAssert(emptyData.chunks(of: 5).elementsEqual([], by: ==))
            XCTAssert(data.chunks(of: -5).elementsEqual([], by: ==))

            XCTAssert(data.chunks(of: 1).elementsEqual([[1], [2], [3], [4], [5], [6], [7], [8], [9], [0]], by: ==))
            XCTAssert(data.chunks(of: 2).elementsEqual([[1, 2], [3, 4], [5, 6], [7, 8], [9, 0]], by: ==))
            XCTAssert(data.chunks(of: 3).elementsEqual([[1, 2, 3], [4, 5, 6], [7, 8, 9], [0]], by: ==))
            XCTAssert(data.chunks(of: 4).elementsEqual([[1, 2, 3, 4], [5, 6, 7, 8], [9, 0]], by: ==))
            XCTAssert(data.chunks(of: 5).elementsEqual([[1, 2, 3, 4, 5], [6, 7, 8, 9, 0]], by: ==))
            XCTAssert(data.chunks(of: 6).elementsEqual([[1, 2, 3, 4, 5, 6], [7, 8, 9, 0]], by: ==))
            XCTAssert(data.chunks(of: 7).elementsEqual([[1, 2, 3, 4, 5, 6, 7], [8, 9, 0]], by: ==))
            XCTAssert(data.chunks(of: 8).elementsEqual([[1, 2, 3, 4, 5, 6, 7, 8], [9, 0]], by: ==))
            XCTAssert(data.chunks(of: 9).elementsEqual([[1, 2, 3, 4, 5, 6, 7, 8, 9], [0]], by: ==))
            XCTAssert(data.chunks(of: 10).elementsEqual([[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]], by: ==))
            XCTAssert(data.chunks(of: 11).elementsEqual([[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]], by: ==))
        }

        func testSplitPlaces() {
            XCTAssert(emptyData.split(places: [5]).elementsEqual([], by: ==))
            XCTAssert(data.split(places: [-5]).elementsEqual([[]], by: ==))

            XCTAssert(data.split(places: [2, -3, 4]).elementsEqual([[1, 2], [], [3, 4, 5, 6]], by: ==))
            XCTAssert(data.split(places: [2, 0, 4]).elementsEqual([[1, 2], [], [3, 4, 5, 6]], by: ==))
            XCTAssert(data.split(places: [2, 3, 5]).elementsEqual([[1, 2], [3, 4, 5], [6, 7, 8, 9, 0]], by: ==))
            XCTAssert(data.split(places: [2, 3, 4]).elementsEqual([[1, 2], [3, 4, 5], [6, 7, 8, 9]], by: ==))
            XCTAssert(data.split(places: [4, 9]).elementsEqual([[1, 2, 3, 4], [5, 6, 7, 8, 9, 0]], by: ==))
            XCTAssert(data.split(places: [4, 9, 10]).elementsEqual([[1, 2, 3, 4], [5, 6, 7, 8, 9, 0]], by: ==))
        }
    }

