//
//  main.swift
//  fmpbpaste
//
//  Created by teruhiro on 2021/05/17.
//

import Foundation
import Cocoa

func getPasteboard() {
    var isFmXml = false
    if let items = NSPasteboard.general.pasteboardItems {
        for item in items {
            for type in item.types {
                if let pbtext = item.string(forType: type) {
                    let xml = SWXMLHash.parse(pbtext)
                    for child in xml.children {
                        if let elem = child.element?.name {
                            if elem == "fmxmlsnippet" {
                                // print(type.rawValue)
                                print(pbtext)
                                isFmXml = true
                            }
                        }
                    }
                }
            }
        }
        if !isFmXml {
            print("The Clipboard is not set with FileMaker XML.")
        }
    }
}

getPasteboard()
