//
//  RoudedButton.swift
//  Closer
//
//  Created by Julien Delferiere on 29/05/2024.
//

import SwiftUI

struct RoudedButton: View {
    
    private let title: String
    private var isSelected: Bool
    private let action: () -> Void
    
    init(title: String, isSelected: Bool, action: @escaping () -> Void) {
        self.title = title
        self.isSelected = isSelected
        self.action = action
    }
    
    var body: some View {
        Text(title)
            .font(.system(
                size: 14,
                weight: isSelected ? .heavy : .semibold
            ))
            .foregroundStyle(isSelected ? .white : .black)
            .padding(.all, 8)
            .background(isSelected ? .lightRed : .white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .onTapGesture {
                self.action()
            }
    }
}

#Preview {
    VStack {
        RoudedButton(
            title: "Metal",
            isSelected: true
        ) {
            print("")
        }
        RoudedButton(
            title: "Metal",
            isSelected: false
        ) {
            print("")
        }
    }
}
