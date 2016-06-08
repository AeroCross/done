//
//  ChecklistItem.swift
//  Done
//
//  Created by Mario Poll Cuba Vivas on 8/06/2016.
//  Copyright © 2016 Mario Cuba. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text: String
    var checked: Bool = false

    init(text: String) {
        self.text = text
    }

    convenience init(text: String, checked: Bool) {
        self.init(text: text)
        self.checked = checked
    }

    func toggleChecked() {
        checked = !checked
    }
}