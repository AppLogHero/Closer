import Foundation

struct ContentCreatorEntity: Codable, Equatable {
    let id: Int
    let pseudo: String
    let firstname: String
    let lastname: String
    let profilPicturePath: String
}
