//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by KevinT on 2018-03-25.
//  Copyright © 2018 KevinT. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

  //MARK: Properties
  
  @IBOutlet weak var photoImageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var ratingControl: RatingControl!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
