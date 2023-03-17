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
            .fill(.linearGradient(colors: [.black.opacity(0.9), .black, .black.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomTrailing))
            .edgesIgnoringSafeArea(.all)
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
