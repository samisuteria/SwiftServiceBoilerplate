import Quick
import Nimble
@testable import Demo

class DemoSpec: QuickSpec {
    override func spec() {
        describe("DemoSpec") {
            it("should run tests") {
                expect(true).to(beTrue())
            }
            it("should also run this") {
                expect(true).to(beTrue())
            }
        }
    }
}
