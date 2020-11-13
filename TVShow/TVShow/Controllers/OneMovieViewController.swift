//
//  OneMovieViewController.swift
//  TVShow
//
//  Created by Jordi Milla on 13/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import UIKit

class OneMovieViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var imageMovie: UIImageView!
    
    var data: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelName.text = data?.name
        labelDescription.text = data?.summary
        imageMovie.sd_setImage(with: URL(string: data?.images.medium ?? ""), placeholderImage: UIImage(named: ""))
     
    }
    
    

}
