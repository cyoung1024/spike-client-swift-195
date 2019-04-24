//
//  SpikeClientManager+UI.swift
//  Loop
//
//  Copyright © 2018 LoopKit Authors. All rights reserved.
//

import LoopKitUI
import HealthKit
import SpikeClient


extension SpikeClientManager: CGMManagerUI {
    public static func setupViewController() -> (UIViewController & CGMManagerSetupViewController)? {
        return SpikeClientSetupViewController()
    }

    public func settingsViewController(for glucoseUnit: HKUnit) -> (UIViewController & CompletionNotifying) {
        let settings = ShareClientSettingsViewController(cgmManager: self, glucoseUnit: glucoseUnit, allowsDeletion: true)
        let nav = SettingsNavigationViewController(rootViewController: settings)
        return nav
    }

    public var smallImage: UIImage? {
        return nil
    }
}
