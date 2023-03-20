//
//  ContentView.swift
//  AnimatedButton
//
//  Created by Pavel Krigin on 17.03.2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Variables
    @State private var offsetOne: CGSize = .zero
    @State private var offsetTwo: CGSize = .zero
    @State private var isCollapsed: Bool = false
    
    //MARK: - Body
    var body: some View {
        ZStack {
            backgroundView()
            
        }
    }
}

extension ContentView {
    private func backgroundView() -> some View {
        Rectangle()
            .fill(.linearGradient(colors: [.black.opacity(0.9),
                .black,
                .black.opacity(0.9)],
                                  startPoint: .topLeading, endPoint: .bottomTrailing))
            .edgesIgnoringSafeArea(.all)
    }
    
    private func anmatedButton() -> some View {
        ZStack {
            Rectangle()
                .fill(.linearGradient(colors: [.purple, .pink], startPoint: .top, endPoint: .bottom))
                .mask {
                    Canvas{context, size
                        context.addFilter(
                            .alphaThreshold(min: 0.8, color: .black))
                        context.addFilter(.blur(radius: 8))
                        context.drawLayer {
                            ctx in for index in [1,2,3] {
                                if let resolvedView =
                                    context.resolveSymbol(id: index) {
                                    ctx.draw(resolvedView, at:
                                                CGPoint(x:
                                                            size.width/2, y:
                                                            size.height/2))
                                }
                            }
                        }
                        
                    } symbols: {
                        
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
