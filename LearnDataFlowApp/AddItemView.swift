//
//  AddItemView.swift
//  LearnDataFlowApp
//
//  Created by Slawek on 09/12/2022.
//

import SwiftUI

struct AddItemView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var name: String
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter name", text: $name)
                HStack {
                    Spacer()
                    Button("Save") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    Spacer()
                }
            }
            .navigationTitle("Add Item")
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(name: .constant("Marry"))
    }
}
