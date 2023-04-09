//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov and Alexey Kanaev on 06.04.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!

    var answers: [Answer] = []
    
    private var animals: [Animal] = []
    private var dog = 0
    private var cat = 0
    private var rabbit = 0
    private var turtle = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        getAnimal()
    }

    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }

    private func getAnimal() {
        for answer in answers {
            animals.append(answer.animal)
        }

        for animal in animals {
            if animal == Animal.dog {
                dog += 1
            } else if animal == Animal.cat {
                cat += 1
            } else if animal == Animal.rabbit {
                rabbit += 1
            } else if animal == Animal.turtle {
                turtle += 1
            }
        }

        if dog > cat && dog > rabbit && dog > turtle {
            animalLabel.text = "Вы - \(Animal.dog.rawValue)"
            definitionLabel.text = Animal.dog.definition
        } else if cat > dog && cat > rabbit && cat > turtle {
            animalLabel.text = "Вы - \(Animal.cat.rawValue)"
            definitionLabel.text = Animal.cat.definition
        } else if rabbit > dog && rabbit > cat && rabbit > turtle {
            animalLabel.text = "Вы - \(Animal.rabbit.rawValue)"
            definitionLabel.text = Animal.rabbit.definition
        } else if turtle > dog && turtle > cat && turtle > rabbit {
            animalLabel.text = "Вы - \(Animal.turtle.rawValue)"
            definitionLabel.text = Animal.turtle.definition
        }
    }

}
