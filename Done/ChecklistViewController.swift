//
//  ChecklistViewController.swift
//  Done
//
//  Created by Mario Poll Cuba Vivas on 8/06/2016.
//  Copyright © 2016 Mario Cuba. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    override func tableView(tableView: UITableView,
                            cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem", forIndexPath: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel

        switch (indexPath.row % 5) {
        case 0:
            label.text = "Git gud"
        case 1:
            label.text = "Not be a casul"
        case 2:
            label.text = "Learn some Swift yo"
        case 3:
            label.text = "Crush it"
        case 4:
            label.text = "Go to sleep"
        default:
            label.text = "Whoops"
        }

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.accessoryType == .None {
                cell.accessoryType = .Checkmark
            } else {
                cell.accessoryType = .None
            }
        }

        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

}
