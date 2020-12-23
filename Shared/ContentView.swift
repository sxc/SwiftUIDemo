//
//  ContentView.swift
//  Shared
//
//  Created by Xiaochun Shen on 2020/12/23.
//

import SwiftUI

struct ContentView: View {
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "Blue"]
    
    @State private var colorIndex = 0
    
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
            Text(text)
            Text("Hello, world!")
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 5))

            Slider(value: $rotation, in: 0 ... 360, step: 0.1)
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach (0 ..< colornames.count) { color in
                    Text(colornames[color])
                        .foregroundColor(colors[color])
                    }
                }
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
