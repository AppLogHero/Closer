import SwiftUI

extension UIScreen {
    static var current: UIScreen? {
        UIWindow.current?.screen
    }
}
