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
    private let conversionRatio = (Double.pi) / 180
    @State var modeInRadians: Bool = true
    private var function: Functions = .tan
    @State var operand: String = "0"
    
    func calulate(_ operand: Double, _ radians: Bool) -> Double {
        switch self.function {
        case .tan : return radians ? tan(operand) : tan(operand * conversionRatio)
        case .sin : return radians ? sin(operand) : sin(operand * conversionRatio)
        case .cos : return radians ? cos(operand) : cos(operand * conversionRatio)
        case .cot : return radians ? (1/tan(operand)) : (1/tan(operand * conversionRatio))
        case .sec : return radians ? (1/cos(operand)) : (1/cos(operand * conversionRatio))
        case .csc : return radians ? (1/sin(operand)) : (1/sin(operand * conversionRatio))
        case .tanh: return radians ? tanh(operand) : tanh(operand * conversionRatio)
        case .cosh: return radians ? cosh(operand) : cosh(operand * conversionRatio)
        case .sinh: return radians ? sinh(operand) : sinh(operand * conversionRatio)
        case .coth: return radians ? (1/tanh(operand)) : (1/tanh(operand * conversionRatio))
        }
    }
    static var shared = Calculator()
    mutating func setFunction(_ function: Functions) {
        self.function = function
    }
        
}
