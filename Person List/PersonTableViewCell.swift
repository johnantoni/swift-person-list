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
    var person: Person? {
        didSet {
            self.textLabel?.text = self.person?.name
            self.detailTextLabel?.text = self.person?.jobTitle
            self.addressView.text = self.person?.address
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)

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

        var bounds = self.contentView.bounds
        bounds.origin.x = bounds.size.width / 2.0
        bounds.size.width -= bounds.origin.x
        self.addressView.frame = bounds
    }
}








