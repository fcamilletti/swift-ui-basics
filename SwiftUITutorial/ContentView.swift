//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Franco on 28/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Hello, world !")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            
            Spacer()
            
            ZStack {
                Text("")
                    .frame(maxWidth:.infinity, maxHeight:.infinity)
                    .background(Color.red)
                    .padding()
                Text("")
                    .frame(maxWidth:.infinity, maxHeight:.infinity)
                    .background(Color.blue)
                    .padding(40)
                Text("")
                    .frame(maxWidth:.infinity, maxHeight:.infinity)
                    .background(Color.yellow)
                    .padding(60)
                Text("")
                    .frame(maxWidth:.infinity, maxHeight:.infinity)
                    .background(Color.green)
                    .padding(80)
            }
            
            Spacer()
            
            HStack {
                
                Text("This is my app")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                Text("Hope you like it :)")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            }
            
        }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
