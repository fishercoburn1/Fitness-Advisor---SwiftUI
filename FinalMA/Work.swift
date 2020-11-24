//
//  Work.swift
//  FinalMA
//
//  Created by Fisher Coburn on 11/24/20.
//

import SwiftUI
import Foundation

struct Work: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable{
        case hot = "compounds"
        case cold = "routines"
    }
}
