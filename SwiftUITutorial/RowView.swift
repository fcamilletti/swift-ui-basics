//
//  RowView.swift
//  SwiftUITutorial
//
//  Created by Franco on 07/07/2021.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar
                .resizable()
                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(10)
                
            VStack (alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
            }
            Spacer()
            
            if programmer.favorite {
            Image(systemName: "heart.fill")
                .foregroundColor(.orange)
                .padding()
            }
        
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Fran", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: true))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
