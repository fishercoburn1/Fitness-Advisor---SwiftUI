//
//  itemRow.swift
//  FinalMA
//
//  Created by Fisher Coburn on 11/24/20.
//

import SwiftUI

struct itemRow: View {
    
    var categoryName:String
    var items:[Work]
    
        var body: some View {
            VStack(alignment: .leading) {

                Text(self.categoryName)
                    .font(.title)
                
                ScrollView(.horizontal, showsIndicators: false){
                           HStack(alignment: .top) {
                               ForEach(self.items,id: \.name){ items in
                                
                                NavigationLink(destination: ItemDetail(items: items)){
                                
                                    WorkItem(work: items)
                                    .frame(width:300)
                                    .padding(.trailing, 30)
                                    }
                               }
                           }
                       }
        }
    }
}

struct itemRow_Previews: PreviewProvider {
    static var previews: some View {
        itemRow(categoryName: "HOT DRINKS", items: workData)
    }
}
