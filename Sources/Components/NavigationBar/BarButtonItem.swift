//
//  BarButtonItem.swift
//  Closer
//
//  Created by Julien Delferiere on 25/05/2024.
//

import SwiftUI

struct BarButtonItem: View {
    let id: UUID = UUID()
    private let icon: Image
    private let action: () -> Void
    
    init(icon: Image, action: @escaping () -> Void) {
        self.icon = icon
        self.action = action
    }
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(.gray, lineWidth: 1)
                .frame(width: 48, height: 48)
            icon
        }
    }
}

#Preview {
    BarButtonItem(icon: Image(systemName: "plus")) {
        print("nothing")
    }
}
