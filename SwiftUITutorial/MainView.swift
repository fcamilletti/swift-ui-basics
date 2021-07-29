//
//  SwiftUIView.swift
//  SwiftUITutorial
//
//  Created by Franco on 06/07/2021.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView().frame(height: 400)
                ImageView().offset(y: -150)
                Divider().padding()
                ContentView()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
