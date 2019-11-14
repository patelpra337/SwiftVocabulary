//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by patelpra on 11/13/19.
//  Copyright © 2019 Crus Technologies. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after been created"),
                                        VocabularyWord(word: "Constant", definition: "Another named value used to store information but cannot be changed once its been set"),
                                        VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word
        
        return cell
        
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let detailVC = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow else {
                return
            }
            
            let vocabWord = vocabWords[indexPath.row]
            detailVC.vocabWord = vocabWord
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        }
    }
}
