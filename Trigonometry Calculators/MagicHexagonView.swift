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
    CGPoint(x: 20, y: 0),
    CGPoint(x: 0, y: 20),
    CGPoint(x: 60, y: 20),
    CGPoint(x: 40, y: 0),
    CGPoint(x: 20, y: 40),
    CGPoint(x: 40, y: 40),
    CGPoint(x: 20, y: 0)
]

struct MagicHexagonView: View {
    
    private func setUpPath() -> some View {
        Path { path in
            path.addLines(points)
        }
        .stroke(lineWidth: 1)
        .frame(width: 60, height: 40)
    }
    
    @State var highlightIndex: Int = 0
    let method_names = [
        0: "sin",
        1: "cos",
        2: "tan",
        3: "cot",
        4: "csc",
        5: "sec"
    ]
    
    var body: some View {
        VStack {
            Text("MagicHexagon -- Choose the function by clicking the title")
                Text("Current Selection: \(self.method_names[self.highlightIndex] ?? "Error")")
                    .fontWeight(.bold)
                .padding([.bottom])
            HStack {
                Text("sin")
                    .padding([.trailing])
                    .onTapGesture {
                        Calculator.shared.setFunction(.sin)
                        self.highlightIndex = 0
                    }
                .font(self.highlightIndex == 0 ? .headline : .none)
                Text("cos")
                .onTapGesture {
                    Calculator.shared.setFunction(.cos)
                    self.highlightIndex = 1
                }
                .font(self.highlightIndex == 1 ? .headline : .none)
            }
            HStack {
                Text("tan")
                    .onTapGesture {
                        Calculator.shared.setFunction(.tan)
                        self.highlightIndex = 2
                    }
                .font(self.highlightIndex == 2 ? .headline : .none)
                ZStack {
                    Text("1").font(.headline)
                    setUpPath()
                }
                Text("cot")
                    .onTapGesture {
                        Calculator.shared.setFunction(.cot)
                        self.highlightIndex = 3
                    }
                .font(self.highlightIndex == 3 ? .headline : .none)
            }
            HStack {
                Text("csc").padding([.trailing])
                .onTapGesture {
                    Calculator.shared.setFunction(.csc)
                    self.highlightIndex = 4
                }
                .font(self.highlightIndex == 4 ? .headline : .none)
                Text("sec")
                .onTapGesture {
                    Calculator.shared.setFunction(.sec)
                    self.highlightIndex = 5
                }
                .font(self.highlightIndex == 5 ? .headline : .none)
            }
        }
    }
    static var shared = MagicHexagonView()
}

struct MagicHexagonView_Previews: PreviewProvider {
    static var previews: some View {
        MagicHexagonView()
    }
}

