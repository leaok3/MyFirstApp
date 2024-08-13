//
//  QuestionHomePage.swift
//  MyFirstApp
//
//  Created by Scholar on 09/08/2024.
//

import SwiftUI

struct QuestionHomePage: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Question 1")
                    .font(.largeTitle)
                Text("Night or day?")
                HStack{
                    NavigationLink(destination: DayChoice()) {
                        Text("Day")
                    }
                    Spacer()
                        .frame(width: 100.0, height: 100.0)
                        NavigationLink (destination: NightChoice()){
                            Text("Night")
                        }
                    }
                .padding()
                Image("daynight")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300.0, height: 100.0)
                }
                
            }
        }
    }

#Preview {
    QuestionHomePage()
}
