//
//  DayChoice.swift
//  MyFirstApp
//
//  Created by Scholar on 09/08/2024.
//

import SwiftUI

struct DayChoice: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("street")
                    .resizable(resizingMode: .stretch)
                    
                VStack{
                    Text("You're walking along the street when a homeless man asks you for some money")
                        .font(.largeTitle)
                    
                    HStack{
                        NavigationLink(destination: GiveMoneyChoice()) {
                            Text("Give money")
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Rectangle() .foregroundColor(Color.gray))
                                .cornerRadius(15)
                        }
                        Spacer()
                            .frame(width: 100.0, height: 100.0)
                        NavigationLink (destination: DontGiveMoneyChoice()){
                            Text("Dont give money")
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Rectangle() .foregroundColor(.gray))
                                .cornerRadius(15)
                        }
                    }
                    .padding()
                    
                    Image("beggar")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100.0, height: 300.0)
                        .position(x: 300.0, y: 330.0)
                    
                    
                }
                
            }
        }
    }
}

#Preview {
    DayChoice()
}
