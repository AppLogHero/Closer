import SwiftUI

enum TabItems: Int, CaseIterable, Equatable {
    case home
    case feed
    case publish
    case messages
    //case notifications
    case settings
    
    var index: Int {
        self.rawValue
    }
    
    var icon: Image {
        switch self {
        case .home:
            return Image(systemName: "house")
        case .feed:
            return Image(systemName: "bonjour")
        case .publish:
            return Image(systemName: "plus")
        case .messages:
            return Image(systemName: "message.badge")
        //case .notifications:
        //    return Image(systemName: "bell")
        case .settings:
            return Image(systemName: "gearshape")
        }
    }
    
    var selectedIcon: Image {
        switch self {
        case .home:
            return Image(systemName: "house.fill")
        case .feed:
            return Image(systemName: "bonjour")
        case .publish:
            return Image(systemName: "plus")
        case .messages:
            return Image(systemName: "message.badge.fill")
        //case .notifications:
        //    return Image(systemName: "bell")
        case .settings:
            return Image(systemName: "gearshape.fill")
        }
    }
    
    var color: Color {
        return .blue
    }
}
