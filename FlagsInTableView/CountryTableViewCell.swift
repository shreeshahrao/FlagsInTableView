//
//  CountryTableViewCell.swift
//  FlagsInTableView
//
//  Created by Shreesha on 11/11/21.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var countryView: UIView!
    @IBOutlet weak var countryImgView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
