//
//  LandscapeCollectionViewCell.swift
//  multipleSelectionCollectionCell
//
//  Created by Mohan K on 28/02/23.
//

import Foundation
import UIKit

final class LandscapeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageViewCell: UIImageView!
    @IBOutlet weak var cellLabelTitle: UILabel!
    
    func setup(_ item: ListItem) {
        ImageViewCell.image = UIImage(named: item.image)
        cellLabelTitle.text = item.title
    }
    
}
