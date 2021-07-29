//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by Franco on 30/06/2021.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("prueba")
                .resizable()
                .padding(50)
                .frame(width: 350, height: 300)
                .background(Color.orange)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle()
                .stroke(Color.blue, lineWidth: 5))
                .shadow(color: Color.gray, radius: 5)
            
            Spacer()	
            
            
            Image(systemName: "car.2")
                .resizable()
                .padding(80)
                .frame(width: 380, height: 300)
                .background(Color.orange)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle()
                .stroke(Color.blue, lineWidth: 5))
                .shadow(color: Color.gray, radius: 5)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
