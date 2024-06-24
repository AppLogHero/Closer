//
//  StoryItem.swift
//  Closer
//
//  Created by Julien Delferiere on 25/05/2024.
//

import SwiftUI

enum StoryItemMode {
    case addButton(image: Image, label: String)
    case contentCreator(_ creator: ContentCreatorEntity)
}

struct StoryItem: View {
    
    private let mode: StoryItemMode
    
    init(mode: StoryItemMode) {
        self.mode = mode
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Circle()
                    .frame(width: 66, height: 66)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.lightRed, .impactYellow],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                Circle()
                    .frame(width: 64, height: 64)
                    .foregroundStyle(.white)
                Circle()
                    .frame(width: 54, height: 54)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.lightRed, .impactYellow],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .padding(.all, 4)
                Group {
                    switch mode {
                    case .addButton(let image, _):
                        ZStack {
                            image
                                .foregroundStyle(.white)
                        }
                        .frame(width: 52, height: 52)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.lightRed, .impactYellow],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .clipShape(Circle())
                    case .contentCreator(let creator):
                        Image(creator.profilPicturePath)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 52, height: 52)
                            .clipShape(Circle())
                    }
                }
            }
            switch mode {
            case .addButton(_, let label):
                Text(label)
                    .font(.system(size: 14, weight: .medium))
                    .padding(.top, 8)
            case .contentCreator(let creator):
                Text(creator.pseudo)
                    .font(.system(size: 14, weight: .medium))
                    .padding(.top, 8)
            }
            
        }
    }
}

#Preview {
    let fakeData = ContentCreatorEntity(
        id: 0,
        pseudo: "HellFire",
        firstname: "John",
        lastname: "Snow",
        profilPicturePath: "human1"
    )
    return HStack(spacing: 16) {
        StoryItem(
            mode: .addButton(
                image: Image(systemName: "plus"),
                label: "Your Story"
            )
        )
        StoryItem(mode: .contentCreator(fakeData))
    }
}
