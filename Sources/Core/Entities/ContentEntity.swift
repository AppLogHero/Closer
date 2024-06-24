import Foundation

enum ContentTypeEntity: Codable, Equatable {
    case story
    case moment
    case picture
}

struct ContentEntity: Codable, Equatable {
    let id: Int
    let title: String
    let type: ContentTypeEntity
    let creatorID: Int
    let categoryID: Int
}
