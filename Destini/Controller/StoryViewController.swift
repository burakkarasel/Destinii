//
//  ViewController.swift
//  Destini
//
//  Created by Burak Karasel on 10.08.2023.
//

import UIKit

class StoryViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    
    var storyManager = StoryManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstUIUpdate()
    }

    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        guard let choice = sender.titleLabel?.text else {return}
        buttonPressUIUpdate(choice: choice)
    }
    
    func buttonPressUIUpdate(choice : String) {
        let nextStory = storyManager.getNextStory(latestChoice: choice)
        storyLabel.text = nextStory.title
        firstChoiceButton.setTitle(nextStory.firstChoice, for: .normal)
        secondChoiceButton.setTitle(nextStory.secondChoice, for: .normal)
    }
    
    func firstUIUpdate() {
        let story = storyManager.getCurrentStory()
        
        storyLabel.text = story.title
        firstChoiceButton.setTitle(story.firstChoice, for: .normal)
        secondChoiceButton.setTitle(story.secondChoice, for: .normal)
    }
}

