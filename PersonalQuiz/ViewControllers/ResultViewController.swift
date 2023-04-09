//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 06.04.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    var answers: [Answer] = []
    var animals: [Animal] = []
    var dog = 0
    var cat = 0
    var rabbit = 0
    var turtle = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        getAnimal()

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
            print("Dog \(dog)")
        } else if cat > dog && cat > rabbit && cat > turtle {
            print("Cat \(cat)")
        } else if rabbit > dog && rabbit > cat && rabbit > turtle {
            print("Rabbit \(rabbit)")
        } else if turtle > dog && turtle > cat && turtle > rabbit {
            print("Turtle \(turtle)")
        }
    }


    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}
