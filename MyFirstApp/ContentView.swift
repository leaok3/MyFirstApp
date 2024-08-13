//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Scholar on 07/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name? "
    var body: some View {
        NavigationStack{
            VStack{
                VStack {
                    
                    Text(textTitle)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                    TextField("Type name here...", text: $name)
                        .multilineTextAlignment(.center)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .border(Color.pink, width : 1)
                        .padding()
                    Button("Submit Name") {
                        textTitle = "Welcome, \(name)"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
                }
                .position(x: 180, y:350)
                
                if textTitle != "Welcome, \(name)"{
            
                } else{
                    NavigationLink(destination: QuestionHomePage()) {
                        Text("Continue")
                    }
                    .position(x: 180, y: 350)
                }
            }
            
                
            }
        .padding()
            
        }
        
    }

#Preview {
    ContentView()
}
