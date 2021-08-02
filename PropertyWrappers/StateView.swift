//
//  StateView.swift
//  SwiftUITutorial
//
//  Created by Franco on 02/08/2021.
//

import SwiftUI

struct StateView: View {
    
    @State private var value = 0
    
    var body: some View {
        VStack {
            Text("El valor actual es \(value)")
            Button("Suma 1") {
                value += 1
            }
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
