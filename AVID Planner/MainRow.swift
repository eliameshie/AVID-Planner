//
//  MainRow.swift
//  AVID Planner
//
//  Created by Israel K Ameshie on 12/6/19.
//  Copyright © 2019 Nero Studios. All rights reserved.
//

import SwiftUI

struct MainRow: View {
    
    var categoryName:String
    var main:[Main]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(self.categoryName)
                .font(.title)
            
        ScrollView (.horizontal, showsIndicators: false) {
            HStack(alignment: .top) {
            ForEach(self.main, id: \.name) { main in
                       MainItem(main: main)
                            .frame(width: 300)
                            .padding(.trailing, 30)
                }
            }
        }
    }
        
       
        
 
    }
}

struct MainRow_Previews: PreviewProvider {
    static var previews: some View {
        MainRow(categoryName: "AVID", main: mainData)
    }
}
