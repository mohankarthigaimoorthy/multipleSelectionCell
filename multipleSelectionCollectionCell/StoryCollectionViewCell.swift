//
//  StoryCollectionViewCell.swift
//  multipleSelectionCollectionCell
//
//  Created by Mohan K on 28/02/23.
//

import Foundation
import UIKit

final class StoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ViewcellImage : UIImageView!
    
    func setup(_ item: ListItem) {
        ViewcellImage.image = UIImage(named: item.image)
        ViewcellImage.layoutIfNeeded()
        ViewcellImage.layer.cornerRadius = ViewcellImage.frame.height / 2
    }
}
