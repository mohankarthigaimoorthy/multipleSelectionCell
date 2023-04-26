//
//  MockData.swift
//  multipleSelectionCollectionCell
//
//  Created by Mohan K on 28/02/23.
//

import Foundation

struct MockData {
    static let shared = MockData()
    
     let stories : ListSection = {
        .stories([.init(title: "", image: "profile-1"),
                  .init(title: "", image: "profile-2"),
                  .init(title: "", image: "profile-3"),
                  .init(title: "", image: "profile-4"),
                  .init(title: "", image: "profile-5"),
                  .init(title: "", image: "profile-6"),
                  .init(title: "", image: "profile-7"),
                  .init(title: "", image: "profile-8")])
    }()
    
     let popular: ListSection = {
        .popular([.init(title: "Naruto", image: "profile-1"),
                  .init(title: "Jujutsu Kaisen", image: "profile-2"),
                  .init(title: "Demon Slayer", image: "profile-3"),
                  .init(title: "One Piece", image: "profile-4"),
                  .init(title: "Death Note", image: "profile-5"),
                  .init(title: "Seven Deadly Sins", image: "profile-6"),
                  .init(title: "As soon As", image: "profile-7"),
                  .init(title: "Impossible", image: "profile-8")
        ])
    }()
    
     let comingSoon: ListSection = {
        .comingSoon([.init(title: "Tokyo Ghoul", image: "soon-1"),
                     .init(title: "Record of Ragnarok", image: "soon-2"),
                     .init(title: "Kaisen Returns", image: "soon-3"),
                     .init(title: "No Idea", image: "soon-4"),
                     .init(title: "Looks interesting", image: "soon-5"),
                     .init(title: "Impossible1", image: "soon-6"),
                     .init(title: "Nothing personal", image: "soon-7"),
                     .init(title: "Make you compatative", image: "soon-8")])
    }()
    
    var pageData: [ListSection] = [stories]
}
