//
//  ContentView.swift
//  Elvis
//
//  Created by Anthony Marie on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageString = ""
    var body: some View {
        VStack {
            
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .foregroundColor(.purple)
                .fontWeight(.black)
            Spacer()
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundColor(.black)
            Text(messageString)
                .font(.largeTitle)
                .foregroundColor(.purple)
                .fontWeight(.black)
            HStack{
                Button("Peace") {
                    messageString = "Peace"
                    imageString = "peacesign"
                }
                    Button("Love") {
                        messageString = "Love"
                        imageString = "heart"
                }
                Button("Understanding") {
                    messageString = "Understanding"
                    imageString = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
                    }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
