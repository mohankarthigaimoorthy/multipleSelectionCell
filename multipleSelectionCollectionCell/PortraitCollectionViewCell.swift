//
//  PortraitCollectionViewCell.swift
//  multipleSelectionCollectionCell
//
//  Created by Mohan K on 28/02/23.
//

import Foundation

import UIKit

final class PortraitCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImagecellView: UIImageView!
    @IBOutlet weak var cellsTitleLbl: UILabel!
    func setup(_ item: ListItem) {
     ImagecellView.image = UIImage(named: item.image)
        cellsTitleLbl.text = item.title
    }
}
