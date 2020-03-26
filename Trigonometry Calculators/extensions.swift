//
//  extensions.swift
//  Trigonometry Calculators
//
//  Created by my_computer on 3/25/20.
//  Copyright © 2020 my_computer. All rights reserved.
//

import Foundation

extension Double: Identifiable {
    public var id: ObjectIdentifier {
        return ObjectIdentifier(Double.self)
    }
}
