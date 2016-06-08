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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    /*
     In the parameter list, the first one (cellForRowAtIndexPath) is an external parameter
     whereas indexPath is the internal or local parameter.
     
     When calling this function, cellForRowAtIndexPath needs to be referenced,
     but when implementing it, indexPath can only be used.
     
     self.tableView(aTableView, cellForRowAtIndexPath: anNSIndexPath)
     
     Reference: https://goo.gl/VSScPb — section "Specifying External Parameter Names"
     */
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


}
