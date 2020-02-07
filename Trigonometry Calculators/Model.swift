//
//  Model.swift
//  Trigonometry Calculators
//
//  Created by my_computer on 2/7/20.
//  Copyright © 2020 my_computer. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

struct Calculator {
    enum Functions: Int {
        case tan, sin, cos, cot, sec, csc, tanh, cosh, sinh, coth
    }
    static var modeInRadians: Bool = true
    static func calulate(function: Functions, operand: Double) -> Double {
        switch function {
        case .tan: return tan(operand)
        case .sin: return sin(operand)
        case .cos: return cos(operand)
        case .cot: return (1/tan(operand))
        case .sec: return (1/cos(operand))
        case .csc: return (1/sin(operand))
        case .tanh: return tanh(operand)
        case .cosh: return cosh(operand)
        case .sinh: return sinh(operand)
        case .coth: return (1/tanh(operand))
        }
    }
    
}
