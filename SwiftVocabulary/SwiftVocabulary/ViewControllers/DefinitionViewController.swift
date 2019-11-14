//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by patelpra on 11/13/19.
//  Copyright © 2019 Crus Technologies. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var vocabLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
        
        vocabLabel.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
    }
}
