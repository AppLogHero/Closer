//
//  BarButtonItem.swift
//  Closer
//
//  Created by Julien Delferiere on 25/05/2024.
//

import SwiftUI

struct BarButtonItem: View {
    
    private let icon: Image
    private let action: () -> Void
    
    init(icon: Image, action: @escaping () -> Void) {
        self.icon = icon
        self.action = action
    }
    
    var body: some View {
        icon
            .padding(.all, 16)
            .clipShape(Circle())
    }
}

#Preview {
    BarButtonItem(icon: Image(systemName: "plus")) {
        print("nothing")
    }
}
