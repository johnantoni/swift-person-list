//
//  ViewController.swift
//  Person List
//
//  Created by R. Tony Goold on 2015-03-12.
//  Copyright (c) 2015 Tony. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var people = Array<Person>()
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        people.append(Person(name: "Alice", job: "Superintendent"))
        people.append(Person(name: "Bob", job: "Graphic Designer"))
        people.append(Person(name: "Charlie", job: "Attendant"))
    }

    @IBAction func addPerson() {
        self.tableView.beginUpdates()

        // Change what we (ViewController) know
        people.append(Person(name: "New Person", job: nil))

        // Tell the table view about the change
        var row = people.count - 1
        var indexPath = NSIndexPath(forRow: row, inSection: 0)
        var indexPaths = [ indexPath ]
        self.tableView.insertRowsAtIndexPaths(indexPaths, withRowAnimation: UITableViewRowAnimation.Left)

        self.tableView.endUpdates()
    }

    @IBAction func editPeople() {
        self.tableView.setEditing(!self.tableView.editing, animated: true)
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Step 1: Get the Person for the row
        let person = people[indexPath.row]

        // Step 2: Create and configure the row for the Person
        var optCell = tableView.dequeueReusableCellWithIdentifier("PersonCell") as UITableViewCell?
        if optCell == nil {
            optCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "PersonCell")
        }

        let cell = optCell!
        cell.textLabel?.text = person.name
        cell.detailTextLabel?.text = person.jobTitle
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let person = self.people[indexPath.row]

        var controller = UIViewController()
        controller.navigationItem.title = person.name
        controller.view.backgroundColor = UIColor.whiteColor()

        self.navigationController?.pushViewController(controller, animated: true)
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        var row = indexPath.row

        self.tableView.beginUpdates()

        self.people.removeAtIndex(row)
        self.tableView.deleteRowsAtIndexPaths([ indexPath ], withRowAnimation: UITableViewRowAnimation.Fade)

        self.tableView.endUpdates()
    }

}

