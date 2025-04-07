//
//  Logging.swift
//  NFCTest
//
//  Created by Andy Qua on 11/06/2019.
//  Copyright © 2019 Andy Qua. All rights reserved.
//

import Foundation

extension Logger {
    /// Using your bundle identifier is a great way to ensure a unique identifier.
    private static var subsystem = Bundle.main.bundleIdentifier!
    
    /// Tag Reader logs
    static let passportReader = Logger(subsystem: subsystem, category: "passportReader")

    /// Tag Reader logs
    static let tagReader = Logger(subsystem: subsystem, category: "tagReader")

    /// SecureMessaging logs
    static let secureMessaging = Logger(subsystem: subsystem, category: "secureMessaging")

    static let openSSL = Logger(subsystem: subsystem, category: "openSSL")

    static let bac = Logger(subsystem: subsystem, category: "BAC")
    static let chipAuth = Logger(subsystem: subsystem, category: "chipAuthentication")
    static let pace = Logger(subsystem: subsystem, category: "PACE")
}

// This disables logging, as simplest way to achieve iOS 13 support
struct Logger : @unchecked Sendable {
    init(subsystem: String, category: String) {}

    func log(_ message: String) {}

    func trace(_ message: String) {}
    func debug(_ message: String) {}
    func info(_ message: String) {}
    func notice(_ message: String) {}
    func warning(_ message: String) {}
    func error(_ message: String) {}
    func critical(_ message: String) {}
    func fault(_ message: String) {}
}
