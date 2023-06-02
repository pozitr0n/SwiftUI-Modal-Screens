//
//  ModalSecondScreen.swift
//  ModalScreens
//
//  Created by Raman Kozar on 02/06/2023.
//

import SwiftUI

struct ModalSecondScreen: View {
    
    @Binding var becomeModal: Bool
    
    var body: some View {
        
        VStack {
            
            Text("This is modal screen")
            
            Button("Close it") {
                self.becomeModal.toggle()
            }
            
        }.padding(.all)
        
    }
    
}

struct ModalSecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        ModalSecondScreen(becomeModal: .constant(true))
    }
}
