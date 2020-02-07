//
//  ContentView.swift
//  Trigonometry Calculators
//
//  Created by my_computer on 2/7/20.
//  Copyright © 2020 my_computer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var text = ""
    @State var string = "g" {
        didSet {
            
        }
    }
    var body: some View {
        VStack {
            TextField("Input", text: self.$string)
                .frame(maxWidth: 100, maxHeight: 70)
                .padding()
            Text(self.text)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
