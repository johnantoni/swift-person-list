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

    override func viewDidLoad() {
        people.append(Person(name: "Alice"))
        people.append(Person(name: "Bob"))
        people.append(Person(name: "Charlie"))
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Step 1: Get the Person for the row
        let person = people[indexPath.row]

        // Step 2: Create and configure the row for the Person
        var cell = UITableViewCell()
        cell.textLabel?.text = person.name
        return cell
    }

}

