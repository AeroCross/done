//
//  ChecklistViewController.swift
//  Done
//
//  Created by Mario Poll Cuba Vivas on 8/06/2016.
//  Copyright © 2016 Mario Cuba. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    @IBAction func addItem() {
        let newRowIndex = items.count
        let item = ChecklistItem(text: "New Item")
        items.append(item)

        let indexPath = NSIndexPath(forRow: newRowIndex, inSection: 0)
        let indexPaths = [indexPath]
        tableView.insertRowsAtIndexPaths(indexPaths, withRowAnimation: .Automatic)

    }

    var items: [ChecklistItem]

    required init?(coder aDecoder: NSCoder) {
        items = [ChecklistItem]()

        // this is what should be modified when persistent storage is implemented
        for _ in 1...3 {
            items.append(ChecklistItem(text: "Lorem ipsum"))
        }

        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem", forIndexPath: indexPath)
        let item = items[indexPath.row]

        configureTextForCell(cell, withChecklistItem: item)
        configureCheckmarkForCell(cell, withChecklistItem: item)

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell: UITableViewCell = tableView.cellForRowAtIndexPath(indexPath) {
            let item: ChecklistItem = items[indexPath.row]

            item.toggleChecked()
            configureCheckmarkForCell(cell, withChecklistItem: item)
        }

        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

    func configureTextForCell(cell: UITableViewCell, withChecklistItem item: ChecklistItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }

    func configureCheckmarkForCell(cell: UITableViewCell, withChecklistItem item: ChecklistItem) {
        if item.checked {
            cell.accessoryType = .None
        } else {
            cell.accessoryType = .Checkmark
        }
    }

}
