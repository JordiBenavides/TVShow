//
//  CustomTableViewCell.swift
//  TVShow
//
//  Created by Jordi Milla on 11/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import UIKit
import SDWebImage

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    
    var data:Movie?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(movie: Movie?) {
        self.data = movie
        labelCell.text = self.data?.name
        imageCell.sd_setImage(with: URL(string: self.data?.images.medium ?? ""), placeholderImage: UIImage(named: ""))
    }
}
