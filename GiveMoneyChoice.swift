//
//  GiveMoneyChoice.swift
//  MyFirstApp
//
//  Created by Scholar on 09/08/2024.
//

import SwiftUI

struct GiveMoneyChoice: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("street")
                    .resizable(resizingMode: .stretch)
                
                VStack{
                    Text("The homeless man is very grateful and he gives you a rusty old coin as thanks")
                        .font(.largeTitle)
                    
                    HStack{
                        NavigationLink(destination: AcceptChoice()) {
                            Text("Accept")
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Rectangle() .foregroundColor(Color.gray))
                                .cornerRadius(15)
                        }
                        Spacer()
                            .frame(width: 100.0, height: 100.0)
                        NavigationLink (destination: RejectChoice()){
                            Text("Reject")
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Rectangle() .foregroundColor(.gray))
                                .cornerRadius(15)
                        }
                    }
                    Image("beggar")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100.0, height: 300.0)
                        .position(x: 300.0, y: 330.0)
                }
                .padding()
                }
                
                
        }
    }
}

#Preview {
    GiveMoneyChoice()
}
