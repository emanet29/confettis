//
//  ViewController.swift
//  confettis
//
//  Created by Snoopy on 19/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bouton: UIButton!
    
    var lanceur: Lanceur!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bouton.layer.cornerRadius = 25
        lanceur = Lanceur(layer: self)
        lanceur.setup(frame: view.frame)
        view.layer.addSublayer(lanceur)
    }

    @IBAction func boutonAction(_ sender: Any) {
        lanceur.lancerConfettis()
        bouton.isEnabled = false
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (t) in
            self.lanceur.emitterCells?.removeAll()
            self.bouton.isEnabled = true
        }
    }
    

}

