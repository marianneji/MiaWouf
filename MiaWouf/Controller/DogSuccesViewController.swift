//
//  DogSuccesViewController.swift
//  MiaWouf
//
//  Created by Graphic Influence on 03/10/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit


class DogSuccesViewController: UIViewController {

    var dog: Pet!

    @IBOutlet weak var welcomeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setDogWelcomeTextLabel()
    }
    func setDogWelcomeTextLabel() {
        if let dogName = dog.name {
            welcomeLabel.text? += "\n\(dogName)"
        }
    }

    @IBAction func dismiss(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
