//
//  MagicHexagonView.swift
//  Trigonometry Calculators
//
//  Created by my_computer on 2/8/20.
//  Copyright © 2020 my_computer. All rights reserved.
//

import SwiftUI

struct MagicHexagonView: View {
    
    var path = NSBezierPath()
    
    private func setUpPath() {
        path.line(to: NSPoint(x: -10, y: 0))
    }
    
    var body: some View {
        Text("s")
    }
    static var shared = MagicHexagonView()
}

struct MagicHexagonView_Previews: PreviewProvider {
    static var previews: some View {
        MagicHexagonView()
    }
}
