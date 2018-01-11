import Foundation
import XCTest

class EditorPublishEpilogueScreen: BaseScreen {
    var doneButton: XCUIElement

    init() {
        let app = XCUIApplication()
        let published = app.staticTexts["Published just now on"]
        doneButton = app.buttons["Done"]

        super.init(element: published)
    }

    func done() -> MySiteScreen {
        app.navigationBars.buttons["Done"].tap()
        return MySiteScreen()
    }
}
