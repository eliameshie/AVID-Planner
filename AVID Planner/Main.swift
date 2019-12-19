//
//  Main.swift
//  AVID Planner
//
//  Created by Eli Ameshie on 12/5/19.
//  Copyright © 2019 Nero Studios. All rights reserved.
//

import SwiftUI

struct Main: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var category:Category
    var imageName:String
    var description:String
    
    enum Category: String, CaseIterable, Codable, Hashable{
        case organiztion = "Organization"
        case utilities = "Utilities"
        case tutorials = "Tutorials"
        case avid = "AVID"
    }

}
