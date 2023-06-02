//
//  ContentView.swift
//  ModalScreens
//
//  Created by Raman Kozar on 02/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var becomeModal: Bool = false
    
    var body: some View {
        Button("Open modal screen") {
            self.becomeModal.toggle()
        }
        .sheet(isPresented: $becomeModal) {
            ModalSecondScreen(becomeModal: self.$becomeModal)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
