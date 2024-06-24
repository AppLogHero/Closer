import SwiftUI
import Foundation

final class HomeViewModel: ObservableObject {
    
    var screenWidth: CGFloat {
        return UIScreen.current?.bounds.width ?? 0.0
    }
    
    var screenHeight: CGFloat {
        return UIScreen.current?.bounds.height ?? 0.0
    }
    
    private var fakeViewCount: Int {
        return Int.random(in: 0...1000000)
    }
    
    var contentCardGridItems: [GridItem] {
        return [
            GridItem(.fixed(screenWidth * 0.45)),
            GridItem(.fixed(screenWidth * 0.45))
            //GridItem(.flexible(minimum: screenWidth * 0.2, maximum: screenWidth * 0.8)),
            //GridItem(.flexible(minimum: screenWidth * 0.2, maximum: screenWidth * 0.8))
            //GridItem(.adaptive(minimum: screenWidth * 0.2, maximum: screenWidth * 0.8)),
            //GridItem(.adaptive(minimum: screenWidth * 0.2, maximum: screenWidth * 0.8))
        ]
    }
    
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
    
    let fakeCategories: [CategoryEntity] = [
        CategoryEntity(
            id: 0,
            name: "Metal"
        ),
        CategoryEntity(
            id: 1,
            name: "BMX"
        ),
        CategoryEntity(
            id: 2,
            name: "Beers"
        ),
        CategoryEntity(
            id: 3,
            name: "Motivation"
        ),
        CategoryEntity(
            id: 4,
            name: "Cooking"
        ),
        CategoryEntity(
            id: 5,
            name: "Event"
        ),
    ]
}
