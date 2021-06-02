//
//  ArtCover.swift
//  SwiftBookRu_05(CoverArt)
//
//  Created by Zodino BLR on 6/2/21.
//  Copyright © 2021 Zodino BLR. All rights reserved.
//

import UIKit

class ArtCover: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet var label: UILabel!
    
    var trackTitle = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: trackTitle)
        label.text = trackTitle
        label.numberOfLines = 0
    } 

}
