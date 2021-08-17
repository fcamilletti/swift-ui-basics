//
//  BindingView.swift
//  SwiftUITutorial
//
//  Created by Franco on 10/08/2021.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            Button("Suma 2") {
                value += 2
            }
            Button("Actualizar datos") {
                user.name = "Fran PTK"
                user.age = 26
            }
            NavigationLink(destination: EnviromentView(), tag: 1, selection: $selection) {
                Button("Ir a EnviromentView") {
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), user: UserData())
    }
}
