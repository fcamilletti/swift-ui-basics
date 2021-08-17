//
//  EnviromentView.swift
//  SwiftUITutorial
//
//  Created by Franco on 17/08/2021.
//

import SwiftUI

struct EnviromentView: View {
    
       @EnvironmentObject var user: UserData
    
        var body: some View {
            Text(user.name)
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentView().environmentObject(UserData())
    }
}
