//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    
    @State private var textTitle = "What is your name?"
    
    @State private var showAlert = false
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.indigo, width: 3)
            Button("Submit Name") {
                showAlert = true
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.mint)
            .alert("Submission Confirmed", isPresented: $showAlert) {
                Button("Okay", role: .cancel) {
                    textTitle = "Welcome, \(name)!"
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
