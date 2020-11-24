//
//  WorkItem.swift
//  FinalMA
//
//  Created by Fisher Coburn on 11/24/20.
//

import SwiftUI

struct WorkItem: View {
    
    var work:Work
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(work.imageName).resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
                .frame(width:300,height:170)
                .cornerRadius(5)
                .shadow(radius: 10)
        VStack(){
            Text(work.name)
                .font(.headline)
                .foregroundColor(.primary)
            Text(work.description)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .lineLimit(2).frame(height:40)
                .foregroundColor(.primary)
            }
        }
    }
}

struct WorkItem_Previews: PreviewProvider {
    static var previews: some View {
        WorkItem(work: workData[0])
    }
}
