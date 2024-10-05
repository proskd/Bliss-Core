//
//  PVVisualBoyAdvance+Options.swift
//  PVVisualBoyAdvance
//
//  Created by Joseph Mattiello on 5/30/24.
//  Copyright © 2024 Provenance Emu. All rights reserved.
//

import Foundation
import PVSupport
import PVCoreBridge
import PVLogging
import libbliss

extension PVCoreBliss: CoreOptional {
    public static var options: [CoreOption] {
        var options = [CoreOption]()

        let coreGroup = CoreOption.group(.init(title: "Core",
                                                description: nil),
                                            subOptions: [])

        let videoGroup = CoreOption.group(.init(title: "Video",
                                                  description: nil),
                                            subOptions: [])


        options.append(coreGroup)
        options.append(videoGroup)

        return options
    }

    @objc(getVariable:)
    public func get(variable: String) -> Any? {
        switch variable {
        default:
            WLOG("Unsupported variable <\(variable)>")
            return nil
        }
    }
}
