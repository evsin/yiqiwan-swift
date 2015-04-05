//
//  YQWPlaceCell.swift
//  yiqiwan
//
//  Created by Joshua on 15/4/5.
//  Copyright (c) 2015年 HAOJIANZONG. All rights reserved.
//

import UIKit

class YQWPlaceCell: UITableViewCell {
    
    @IBOutlet weak var descLabelWidthConstraint: NSLayoutConstraint!
    class func heightForYQWPlaceCell() -> CGFloat {
        return 120
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        descLabelWidthConstraint.constant = UIScreen.mainScreen().bounds.size.width - 20
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
