//
//  ContentView.swift
//  Trigonometry Calculators
//
//  Created by my_computer on 2/7/20.
//  Copyright © 2020 my_computer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var result: Double = 0.0
    @State var operand: String = Calculator.shared.operand
    @State var modeInRadians = Calculator.shared.modeInRadians
    @State var isPresented = false
    
    var body: some View {
        VStack {
            MagicHexagonView.shared.padding([.top])
            TextField(.init("Input Real Numbers"), text: $operand)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(maxWidth: 300)
                .padding()
            Picker(selection: $modeInRadians, label: Text("")) {
                Text("Radians").tag(true)
                Text("Degrees").tag(false)
            }
            .pickerStyle(RadioGroupPickerStyle())
            .frame(maxWidth: 200)
            Button(action: {
                self.result = Calculator.shared.calulate(Double(self.operand) ?? 0.0, self.modeInRadians)
                History.default.historyData.append(self.result)
            }) {
                Text("Calculate")
            }
            .padding()
            Text("Result: " + String(result))
            Text("Rounded Result: " + String(result.rounded(.toNearestOrAwayFromZero)))
            Button(action: {
                self.isPresented = true
            }) {
                Text("        History        ")
            }
            .popover(isPresented: self.$isPresented, content: {HistoryView()})
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView().environment(\.colorScheme, .light)
            ContentView().environment(\.controlSize, .mini)
            ContentView().environment(\.font, .largeTitle)
            ContentView().environment(\.layoutDirection, .rightToLeft)
            ContentView().environment(\.legibilityWeight, .bold)
        }
    }
}
