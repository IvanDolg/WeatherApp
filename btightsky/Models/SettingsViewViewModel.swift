//
//  SettingsViewViewModel.swift
//  btightsky
//
//  Created by Иван Долголаптев on 7.05.24.
//

import Foundation

struct SettingsViewViewModel {
    let option: [SettingsOption]
}

enum SettingsOption: CaseIterable {
    case upgrade
    case privacyPolicy
    case terms
    case contact
    case getHelp
    case rateApp
    
    var title: String {
        switch self {
        case .upgrade:
            return "Upgrage to Pro"
        case .privacyPolicy:
            return "Privacy Policy"
        case .terms:
            return "Terms of Us"
        case .contact:
            return "Contact Us"
        case .getHelp:
            return "Get Help"
        case .rateApp:
            return "Rate App!"
        }
    }
}


