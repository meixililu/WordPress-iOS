import Foundation
import XCTest

class LinkOrPasswordScreen: BaseScreen {
    let passwordOption: XCUIElement

    init() {
        passwordOption = XCUIApplication().buttons["Use Password"]
        super.init(element: passwordOption)
    }

    func proceedWithPassword() -> LoginPasswordScreen {
        passwordOption.tap()

        return LoginPasswordScreen()
    }

    static func isLoaded() -> Bool {
        return XCUIApplication().buttons["Use Password"].exists
    }
}
