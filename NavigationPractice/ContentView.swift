//
//  ContentView.swift
//  NavigationPractice
//
//  Created by scholar on 7/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack (spacing: 60) {
                Text("Welcome to my app!")
                    .font(.largeTitle)
                
                Text("Click the frog to learn more about us!")
                NavigationLink(destination: AboutUsView()) {
                    Image("cute-frog")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                }
            }
            
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: ContactUsView()) {
                        Text("Contact")
                    }
                    NavigationLink(destination: HelpView()) {
                        Text("Help")
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
