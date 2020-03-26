//
//  HistoryView.swift
//  Trigonometry Calculators
//
//  Created by my_computer on 2/20/20.
//  Copyright © 2020 my_computer. All rights reserved.
//

import SwiftUI


struct HistoryView: View {
    
    private var data: [Double] {
        return History.default.historyData
    }
    
    var body: some View {
        List (0..<data.count) { index in
            HStack {
                Text(String(self.data[index]))
                    .padding([.trailing])
                Button(action: {
                    let pasteBoard = NSPasteboard(name: .general)
                    pasteBoard.declareTypes([.string], owner: nil)
                    pasteBoard.setString(String(self.data[index]), forType: .string)
                }) {
                    Text("Copy")
                }
            }
        }
    }
    
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
