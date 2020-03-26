//
//  History.swift
//  Trigonometry Calculators
//
//  Created by my_computer on 3/25/20.
//  Copyright © 2020 my_computer. All rights reserved.
//

import Foundation
//import SwiftUI

struct History {
        
    /*@State*/ var historyData: [Double] = []
    
    static var `default` = History()
    
    init() {
        self.historyData = []
    }
}
