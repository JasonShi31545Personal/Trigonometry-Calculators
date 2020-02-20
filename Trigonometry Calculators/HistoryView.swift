//
//  HistoryView.swift
//  Trigonometry Calculators
//
//  Created by my_computer on 2/20/20.
//  Copyright © 2020 my_computer. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) {_ in
                    Text("History")
                }
            }
        }
    }
    static var shared = HistoryView()
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
