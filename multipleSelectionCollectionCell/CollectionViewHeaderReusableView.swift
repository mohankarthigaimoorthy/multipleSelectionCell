//
//  CollectionViewHeaderReusableView.swift
//  multipleSelectionCollectionCell
//
//  Created by Mohan K on 28/02/23.
//

import Foundation
import UIKit

final class CollectionViewHeaderReusabelView: UICollectionReusableView {
    @IBOutlet weak var cellTitle : UILabel!
    
    func setup(_ title: String) {
        cellTitle.text = title
    }
}
