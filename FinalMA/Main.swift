//
//  Main.swift
//  FinalMA
//
//  Created by Fisher Coburn on 11/24/20.
//

import SwiftUI

struct MainView: View {
    
    var categories:[String:[Work]]{
        .init(
            grouping: workData,
            by: {$0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView{
            List(categories.keys.sorted(), id: \.self) { key in itemRow(categoryName: "\(key) ".uppercased(), items:self.categories[key]!).frame(height:320).padding(.top).padding(.bottom)
            }
        .navigationBarTitle(Text("FITNESS ADVISOR"))
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
