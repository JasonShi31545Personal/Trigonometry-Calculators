//
//  ContentView.swift
//  Trigonometry Calculators
//
//  Created by my_computer on 2/7/20.
//  Copyright © 2020 my_computer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var operand = ""
    @State var result: String = ""
    var body: some View {
        VStack {
            MagicHexagonView.shared
            TextField(.init("Input Real Numbers"), text: $operand)
                .frame(maxWidth: 300)
                .padding()
            Picker(selection: .constant(1), label: Text("")) {
                Text("Radians").tag(1)
                Text("Degrees").tag(2)
            }
            .frame(maxWidth: 200)
            Button(action: {
                self.result = String(Calculator.shared.calulate(function: .cos, operand: Double(self.operand) ?? 0.0))
            }) {
                Text("Calculate")
            }
            Text(result)
            HStack {
                Button(action: {
                    let window = NSWindow(contentRect: NSRect(x: 0, y: 0, width: 500, height: 500), styleMask: [.closable, .titled, .miniaturizable, .unifiedTitleAndToolbar], backing: .buffered, defer: true)
                    window.contentView = NSHostingView(rootView: HistoryView.shared)
                    window.center()
                    window.display()
                    window.makeKeyAndOrderFront(nil)
                }) {
                    Text("History")
                }
                Button(action: {
                    NSLog("c")
                }) {
                    Text("Clear")
                }

            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
