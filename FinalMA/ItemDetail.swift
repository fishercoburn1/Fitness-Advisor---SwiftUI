//
//  ItemDetail.swift
//  FinalMA
//
//  Created by Fisher Coburn on 11/24/20.
//

import SwiftUI

struct ItemDetail: View {
    
    var items:Work
    
    var body: some View {
        List{
            ZStack(alignment:.bottom) {
                Image(items.imageName)
                .resizable()
                .aspectRatio(contentMode:.fit)
                Rectangle().frame(height:70).background(Color.black).opacity(0.25).blur(radius: 10)
                HStack{
                    VStack(alignment: .leading,spacing:8){
                        Text(items.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }.listRowInsets(EdgeInsets())
            //Zstack ends
            
            VStack(alignment: .leading) {
                Text(items.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack {
                    Spacer()
                    Spacer()
                }.padding(.top,50)
            }
            .padding(.top) //End of Vstack
            .padding(.bottom)

        } //End of list
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(false)
    }
}


struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(items: workData[3])
    }
}
