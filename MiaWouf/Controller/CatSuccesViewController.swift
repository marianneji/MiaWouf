//
//  CatSuccesViewController.swift
//  MiaWouf
//
//  Created by Graphic Influence on 03/10/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit

class CatSuccesViewController: UIViewController {

    var cat: Pet!

    @IBOutlet weak var WelcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        WelcomeLabel.text? += "\n\(cat.name ?? "Unknow")"
    }
    @IBAction func dismiss(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
