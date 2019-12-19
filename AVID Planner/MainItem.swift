//
//  MainItem.swift
//  AVID Planner
//
//  Created by Israel K Ameshie on 12/5/19.
//  Copyright © 2019 Nero Studios. All rights reserved.
//

import SwiftUI

struct MainItem: View {
    
    var main:Main 
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
        Image(main.imageName)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 170)
            .cornerRadius(10)
            .shadow(radius: 10)
        
        VStack(alignment: .leading, spacing: 5) {
                
            Text(main.name)
                .foregroundColor(.primary)
                .font(.headline)
        
            Text(main.description)
                .foregroundColor(.primary)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height: 40)
            }
        }
    }
}

struct MainItem_Previews: PreviewProvider {
    static var previews: some View {
        MainItem(main: mainData[0])
    }
}
