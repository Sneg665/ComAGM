//
//  NomenklaturaObmena.swift
//  ComAGM
//
//  Created by Владимир Уланов on 07.03.2019.
//  Copyright © 2019 UlanovApp. All rights reserved.
//

import UIKit

class NomenklaturaObmena: NSObject {
    var codeNom: String!
    var naimNom: String!

    
    convenience init(codeNom: String, naimNom: String)
    {
        self.init()
        
        self.codeNom       = codeNom
        self.naimNom       = naimNom

    }

}
