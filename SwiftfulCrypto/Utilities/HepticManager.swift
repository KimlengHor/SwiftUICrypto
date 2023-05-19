//
//  HepticManager.swift
//  SwiftfulCrypto
//
//  Created by Kimleng Hor on 5/19/23.
//

import Foundation
import SwiftUI

class HepticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
