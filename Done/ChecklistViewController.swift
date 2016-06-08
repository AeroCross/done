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
        return 5
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
        return cell
    }


}
