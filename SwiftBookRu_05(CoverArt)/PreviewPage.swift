//
//  PreviewPage.swift
//  SwiftBookRu_05(CoverArt)
//
//  Created by Zodino BLR on 6/2/21.
//  Copyright © 2021 Zodino BLR. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ArtCover"

class PreviewPage: UICollectionViewController {
    
    let imageNameArray = [
        "Dave Wincent - Red Eye (Original Mix)",
        "E-Spectro - End Station (Original Mix)",
        "Edna Ann - Phasma (Konstantin Yoodza Remix)",
        "Ilija Djokovic - Delusion (Original Mix)",
        "John Baptiste - Mycelium (Original Mix)",
        "Lane 8 - Fingerprint (Original Mix)",
        "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
        "Metodi Hristov, Gallya - Badmash (Original Mix)",
        "Veerus, Maxie Devine - Nightmare (Original Mix)"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageNameArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCoverCell
        
        cell.coverImageView.image = UIImage(named: imageNameArray[indexPath.row])
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetails" {
            if let indexPath = self.collectionView?.indexPathsForSelectedItems {
                let artCover = segue.destination as! ArtCover
                artCover.trackTitle = ?????            }
            
            
        }
    }
}
