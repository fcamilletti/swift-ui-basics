//
//  ListDetailView.swift
//  SwiftUITutorial
//
//  Created by Franco on 15/07/2021.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    
    @Binding var favorite: Bool
    
    var body: some View {
        VStack {
                programmer.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            
            HStack {
                Text(programmer.name).font(.largeTitle)
                Button {
                    favorite.toggle()
                }   label: {
                    if favorite {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.orange)
                    } else {
                        Image(systemName: "heart")
                            .foregroundColor(.black)
                }
            }
        }
            Text(programmer.languages).font(.title)
            Spacer()
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id: 1, name: "Fran", languages: "Swift", avatar: Image(systemName: "person.fill"),favorite: true), favorite: .constant(false))
        }
    }
}
