//
//  BindingView.swift
//  SwiftUITutorial
//
//  Created by Franco on 10/08/2021.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    
    var body: some View {
        VStack {
            Button("Suma 2") {
                value += 2
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5))
    }
}
