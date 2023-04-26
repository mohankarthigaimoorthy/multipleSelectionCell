//
//  ViewController.swift
//  multipleSelectionCollectionCell
//
//  Created by Mohan K on 28/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
  
    private let sections =  MockData.shared.stories
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("sections : \(sections), count : \(sections.count)")
        collectionView.collectionViewLayout = createLayout()
        // Do any additional setup after loading the view.
    }

    private func createLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { [weak self]
            sectionIndex, layoutEnvironment in
//            guard let self = self else {return UICollectionViewCompositionalLayout() }
            let section = self.sections[sectionIndex]
            switch section {
            case .stories:
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .absolute(70), heightDimension: .absolute(70)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.interGroupSpacing = 10
                section.contentInsets = .init(top: 0, leading: 10, bottom: 30, trailing: 10)
                section.boundarySupplementaryItems = [self.supplementaryHeaderItem()]
                section.supplementariesFollowContentInsets = false
                return section
            case .popular:
                return nil
            case .comingSoon:
                return nil
//            case .popular:
//                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalHeight(1), heightDimension: .fractionalHeight(1)))
//                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalHeight(0.9), heightDimension: .fractionalHeight(0.6)), subitems: [item])
//                let section = NSCollectionLayoutSection(group: group)
//                section.orthogonalScrollingBehavior = .groupPagingCentered
//                section.interGroupSpacing = 10
//                section.contentInsets = .init(top: 0, leading: 10,bottom: 30, trailing: 10)
//                section.boundarySupplementaryItems = [self.supplementaryHeaderItem()]
//                section.supplementariesFollowContentInsets = false
//                return section
//            case .comingSoon:
//                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
//                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(170), heightDimension: .fractionalHeight(80)), subitems: [item])
//                let section = NSCollectionLayoutSection(group: group)
//                section.orthogonalScrollingBehavior = .continuous
//                section.interGroupSpacing = 10
//                section.contentInsets = .init(top: 0, leading: 10, bottom: 0, trailing: 10)
//                section.boundarySupplementaryItems = [self.supplementaryHeaderItem()]
//                section.supplementariesFollowContentInsets = false
//                return section
            }
        }
    }
    
    private func supplementaryHeaderItem() ->
    
        NSCollectionLayoutBoundarySupplementaryItem {
            .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
            
        }
    }


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return sections.count
//    }
//
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch sections[indexPath.section] {
        case .stories(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
            cell.setup(items[indexPath.row])
            return cell
        case.popular(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PortraitCollectionViewCell", for: indexPath) as! PortraitCollectionViewCell
            cell.setup(items[indexPath.row])
            return cell
        case.comingSoon(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LandscapeCollectionViewCell", for: indexPath) as! LandscapeCollectionViewCell
            cell .setup(items[indexPath.row])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader: let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CollectionViewHeaderReusabelView", for: indexPath) as! CollectionViewHeaderReusabelView
            header.setup(sections[indexPath.section].title)
            return header
        default:
            return UICollectionReusableView()
        }
    }
}
