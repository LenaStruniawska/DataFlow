//
//  ContentView.swift
//  LearnDataFlowApp
//
//  Created by Slawek on 09/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    @State private var name: String = " "
    
    var body: some View {
        VStack(spacing: 10) {
           
                Text(name)
        
                .font(.largeTitle)
            
            Button("Add") {
                isPresented = true
            }
        }.sheet(isPresented: $isPresented, content: {
            AddItemView(name: $name)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
