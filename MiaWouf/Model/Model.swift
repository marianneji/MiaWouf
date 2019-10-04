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

extension Pet {

    enum Status {
        case accepted
        case rejected(error: String)
    }
    var status: Status {
        if name == nil || name == "" {
            return .rejected(error: "Vous n'avez pas indiqué votre nom !")
        } else if phone == nil || phone == "" {
            return .rejected(error: "Veuillez indiquer votre téléphone !")
        } else if !hasMajority {
            return .rejected(error: "Les mineurs ne sont pas admis !")
        } else if race == nil || race == "" {
            return .rejected(error: "Quel votre race ?")
        }
        return .accepted
    }

}
