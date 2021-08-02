//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Franco on 14/07/2021.	
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {

    @Published var programmers = [Programmer(id: 0, name: "Fran", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: true),
                       Programmer(id: 1, name: "Juanma", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: true),
                       Programmer(id: 2, name: "Ore", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: false),
                       Programmer(id: 3, name: "Serra", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: false),
                       Programmer(id: 4, name: "Ayrs", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: false)]
}

struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter { programmer in
            return !showFavorites || programmer.favorite
    }

}
        
    var body: some View {
        
        NavigationView {
        
            VStack {
                Toggle(isOn: $showFavorites) {
                Text("Mostrar favoritos")
                }.padding()
                
                
                    List (filteredProgrammers, id: \.id) { programmer in
                        NavigationLink (destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)) {
                            RowView (programmer: programmer)
                    }
                        
                }
                
            } .navigationTitle("Programmers")
            
        }
            
    }
   
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}

