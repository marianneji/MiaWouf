//
//  Model.swift
//  MiaWouf
//
//  Created by Graphic Influence on 04/10/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import Foundation

struct Pet {

    enum Gender {
        case female, male
    }

    var name: String?
    var hasMajority: Bool
    var phone: String?
    var gender: Gender
    var race: String?

}
