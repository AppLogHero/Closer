//
//  Item.swift
//  Closer
//
//  Created by Julien Delferiere on 25/05/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
