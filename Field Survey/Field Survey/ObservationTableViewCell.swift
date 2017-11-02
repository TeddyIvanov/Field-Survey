//
//  ObservationTableViewCell.swift
//  Field Survey
//
//  Created by Teodor Ivanov on 11/1/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import UIKit

class ObservationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
