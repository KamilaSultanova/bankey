//
//  DecimalUtil.swift
//  Bankey
//
//  Created by Kamila Sultanova on 18.05.2025.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
