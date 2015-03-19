//
//  PersonTableViewCell.swift
//  Person List
//
//  Created by R. Tony Goold on 2015-03-19.
//  Copyright (c) 2015 Tony. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    var addressView = UITextView()
    var person: Person?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.contentView.addSubview(self.addressView)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func layoutSubviews() {
        super.layoutSubviews()


    }

    func setPerson(person: Person?) {
        self.person = person
        self.textLabel?.text = person?.name
        self.detailTextLabel?.text = person?.jobTitle
    }
}
