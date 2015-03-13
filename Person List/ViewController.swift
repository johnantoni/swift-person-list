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
        people.append(Person(name: "Alice", job: "Superintendent"))
        people.append(Person(name: "Bob", job: "Graphic Designer"))
        people.append(Person(name: "Charlie", job: "Attendant"))
        people.append(Person(name: "Alice", job: "Superintendent"))
        people.append(Person(name: "Bob", job: "Graphic Designer"))
        people.append(Person(name: "Charlie", job: "Attendant"))
        people.append(Person(name: "Alice", job: "Superintendent"))
        people.append(Person(name: "Bob", job: "Graphic Designer"))
        people.append(Person(name: "Charlie", job: "Attendant"))
        people.append(Person(name: "Alice", job: "Superintendent"))
        people.append(Person(name: "Bob", job: "Graphic Designer"))
        people.append(Person(name: "Charlie", job: "Attendant"))
        people.append(Person(name: "Alice", job: "Superintendent"))
        people.append(Person(name: "Bob", job: "Graphic Designer"))
        people.append(Person(name: "Charlie", job: "Attendant"))
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

}

