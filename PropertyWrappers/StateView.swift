//
//  StateView.swift
//  SwiftUITutorial
//
//  Created by Franco on 02/08/2021.
//

import SwiftUI

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                Text("El valor actual es \(value)")
                Button("Suma 1") {
                    value += 1
                }
                NavigationLink(destination: BindingView(value: $value), tag: 1, selection: $selection) {
                    Button("Ir a BindingView") {
                        selection = 1
                    }
                }
            }.navigationTitle("StateView")
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
