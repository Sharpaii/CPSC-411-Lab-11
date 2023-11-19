//
//  ContentView.swift
//  Profile
//
//  

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Analyze code for Model 1
            HStack {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                Circle()
                    .stroke(lineWidth: 5)
                    .foregroundColor(.orange)
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(.blue)
                    .overlay(Circle()
                        .stroke(lineWidth: 5)
                        .foregroundColor(.orange))
                    .frame(width: 100, height: 100)
            }.padding()
            // Analyze code for Model 2
            HStack {
                // TODO: Model 1 - Create a shape using any of the shapes and modifiers you learned.
                Rectangle()
                    .fill(.purple)
                    .overlay(Rectangle()
                        .stroke(lineWidth:5)
                        .foregroundColor(.green))
                    .frame(width:100, height: 100)
                Diamond()
                    .fill(.yellow)
                    .frame(width: 100, height: 100)
                // TODO: Model 2 - Create your custom shape
                Triangle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
            }.padding()
            Spacer()
            HStack {
                Image("tuffy")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                // TODO: Model 3 - Add image modifiers
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                        .stroke(lineWidth: 5)
                        .foregroundColor(.black))
                    .shadow(radius: 5) 
                // TODO: Model 3 - Add your own image and use any of the modifiers you learned.
                Image("furina")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                        .stroke(lineWidth: 5)
                        .foregroundColor(.black))
                    .shadow(radius: 5)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
