//
//  MagicHexagonView.swift
//  Trigonometry Calculators
//
//  Created by my_computer on 2/8/20.
//  Copyright © 2020 my_computer. All rights reserved.
//

import SwiftUI

fileprivate var points = [
    CGPoint(x: 0, y: 20),
    CGPoint(x: 20, y: 40),
    CGPoint(x: 40, y: 40),
    CGPoint(x: 60, y: 20),
    CGPoint(x: 40, y: 0),
    CGPoint(x: 20, y: 0)
]

struct MagicHexagonView: View {
    
    private func setUpPath() -> Path {
        Path { path in
            path.addLines(points)
        }
    }
        
    var body: some View {
        ZStack {
            Text("1")
            setUpPath()
                .aspectRatio(1, contentMode: .fit)
                .padding()
        }
    }
    static var shared = MagicHexagonView()
}

struct MagicHexagonView_Previews: PreviewProvider {
    static var previews: some View {
        MagicHexagonView()
    }
}

