//
//  CurrencyFormatter.swift
//  CuurencyConverterApp
//
//  Created by Ярослав Вербило on 2023-05-07.
//

import Foundation

class CurrencyFormatter : NumberFormatter {
    func configurete (
    numberStyle: NumberFormatter.Style = .currency,
    localId: LocalId = .usa
    ) {
        self.numberStyle = numberStyle
        maximumFractionDigits = 2
        locale = Locale(identifier: localId.rawValue)
    }
    
    func string(from: Double) -> String? {
        string(from: NSNumber(value: from))
    }
    
    enum LocalId: String {
        case ukraine = "ua_UA"
        case usa = "en_US"
        case france = "fr_FR"
        case china = "cny_CN"
        case poland = "pln_PL"
        case albania = "all_AL"
        case india = "in_IND"
    }
}
