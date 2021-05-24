//
//  ContentView.swift
//  Animations
//
//  Created by Thongchai Subsaidee on 24/5/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isClicked: Bool = false
    
    var body: some View {
        Button(action: {
            self.animation()
        }, label: {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .rotationEffect(isClicked ? .degrees(90) : .degrees(0))
                .animation(.spring())
            
        })
    }
    
    func animation() {
        self.isClicked.toggle()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

