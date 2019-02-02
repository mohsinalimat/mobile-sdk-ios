//
//  Locale.swift
//  CrowdinSDK
//
//  Created by Serhii Londar on 1/25/19.
//  Copyright © 2019 Crowdin. All rights reserved.
//

import Foundation

extension Locale {
    enum Keys: String {
        case kCFLocaleLanguageCodeKey
        case kCFLocaleCountryCodeKey
    }
    static var preferredLanguageIdentifiers: [String] {
        return Locale.preferredLanguages.compactMap ({
            let components = Locale.components(fromIdentifier: $0)
            return components[Keys.kCFLocaleLanguageCodeKey.rawValue]!.lowercased()
        })
    }
}