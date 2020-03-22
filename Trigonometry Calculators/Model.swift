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
    private let conversionRatio = 180 / (2 * Double.pi)
    @State var modeInRadians: Bool = true
    func calulate(function: Functions, operand: Double) -> Double {
        switch function {
        case .tan: return modeInRadians ? tan(operand) : tan(operand) * conversionRatio
        case .sin: return modeInRadians ? sin(operand) : sin(operand) * conversionRatio
        case .cos: return modeInRadians ? cos(operand) : cos(operand) * conversionRatio
        case .cot: return modeInRadians ? (1/tan(operand)) : (1/tan(operand)) * conversionRatio
        case .sec: return modeInRadians ? (1/cos(operand)) : (1/cos(operand)) * conversionRatio
        case .csc: return modeInRadians ? (1/sin(operand)) : (1/sin(operand)) * conversionRatio
        case .tanh: return modeInRadians ? tanh(operand) : tanh(operand) * conversionRatio
        case .cosh: return modeInRadians ? cosh(operand) : cosh(operand) * conversionRatio
        case .sinh: return modeInRadians ? sinh(operand) : sinh(operand) * conversionRatio
        case .coth: return modeInRadians ? (1/tanh(operand)) : (1/tanh(operand)) * conversionRatio
        }
    }
    static var shared = Calculator()
}
