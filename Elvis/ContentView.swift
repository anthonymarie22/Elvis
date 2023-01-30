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
            
            Text("Elvis Costolo")
                .font(.largeTitle)
                .foregroundColor(.purple)
                .fontWeight(.black)
            
            Spacer()
            
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundColor(.black)
                .frame(width: 300, height: 300)
            Text(messageString)
                .font(.largeTitle)
                .foregroundColor(.purple)
                .fontWeight(.black)
            
            Spacer()
            
            HStack{
                Button("Flip through") {
                    if messageString == "Peace"{
                        messageString = "Love"
                        imageString = "peacesign"
                    }
                    
                    else if  messageString == "Love"{
                        messageString = "Understanding"
                        imageString = "heart"}
                    
                    else if messageString == "Understanding"{
                        messageString = "Peace"
                        imageString = "lightbulb"}
                    else if messageString == ""{
                        messageString = "Peace"
                        imageString = "peacesign"}
                }
                
               
            }
        }
        .buttonStyle(.borderedProminent)
        .tint(.purple)
    }
      
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
