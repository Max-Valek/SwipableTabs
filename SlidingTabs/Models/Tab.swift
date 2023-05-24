//
//  Tab.swift
//  SlidingTabs
//
//  Created by Max Valek on 5/24/23.
//

import Foundation


/// Enum to represent the different tabs
enum Tab: Hashable, CaseIterable {
    case one, two, three
}

extension Tab {
    var title: String {
        switch self {
        case .one:
            return "One"
        case .two:
            return "Two"
        case .three:
            return "Three"
        }
    }
}
