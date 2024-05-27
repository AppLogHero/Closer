import Foundation

final class HomeViewModel: ObservableObject {
    let fakeStories: [ContentCreatorEntity] = [
        ContentCreatorEntity(
            id: 0,
            pseudo: "HellFire",
            firstname: "John",
            lastname: "Snow",
            profilPicturePath: "human1"
        ),
        ContentCreatorEntity(
            id: 1,
            pseudo: "KattyBee",
            firstname: "Kate",
            lastname: "Become",
            profilPicturePath: "human2"
        ),
        ContentCreatorEntity(
            id: 2,
            pseudo: "Clock",
            firstname: "Jeanne",
            lastname: "Blachette",
            profilPicturePath: "human3"
        ),
        ContentCreatorEntity(
            id: 3,
            pseudo: "Malicious",
            firstname: "Robin",
            lastname: "Spark",
            profilPicturePath: "human4"
        )
    ]
}
