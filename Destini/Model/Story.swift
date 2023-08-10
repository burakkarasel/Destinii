//
//  Story.swift
//  Destini
//
//  Created by Burak Karasel on 10.08.2023.
//

import Foundation

struct Story {
    var title : String
    var firstChoice : String
    var firstChoiceDestination : Int
    var secondChoice : String
    var secondChoiceDestination : Int
    
    init(t: String, f: String, fd: Int, s: String, sd: Int) {
        self.title = t
        self.firstChoice = f
        self.firstChoiceDestination = fd
        self.secondChoice = s
        self.secondChoiceDestination = sd
    }
}
