//
//  Person.swift
//  SingleView
//
//  Created by R. Tony Goold on 2015-03-12.
//  Copyright (c) 2015 Tony. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var jobTitle: String?
    var address: String?

    init(name: String, job: String?) {
        self.name = name
        self.jobTitle = job
    }
}
