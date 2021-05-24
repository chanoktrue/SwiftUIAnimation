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
        GeometryReader {
            geometry in
            ZStack(alignment: .top) {
                Button(action: {
                    self.animation()
                }, label: {
                    Image(systemName: isClicked ? "gobackward" : "plus.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60, alignment: .top)
                        .rotationEffect(isClicked ? .degrees(90) : .degrees(0))
                        .animation(.spring())
                })
                
                Color.black
                    .frame(width: 100, height: 100, alignment: .center)
//                    .rotation3DEffect(
//                        isClicked ? .degrees(360) : .degrees(0),
//                        axis: (x: 1.0, y: 1.0, z: 1.0)
//                    )
//                    .animation(.linear(duration: 1))
                    .offset(x: 0,
                            y: isClicked ? geometry.size.height / 2 - 100 : geometry.size.height / 2 + 100)
                    .animation(.spring())
                
                if isClicked {
                    Color.red
                        .frame(width: 100, height: 100, alignment: .center)
                        .transition(.asymmetric(insertion: .scale, removal: .opacity))
                        .offset(x: 0, y: geometry.size.height * -0.2)
                }

                    
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
        }
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

