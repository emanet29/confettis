//
//  Lanceur.swift
//  confettis
//
//  Created by Snoopy on 19/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class Lanceur: CAEmitterLayer {
    
    override init(layer: Any) {
        super.init(layer: layer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func setup(frame: CGRect) {
        emitterPosition = CGPoint(x: frame.width/2, y: -10)
        emitterShape = kCAEmitterLayerLine
        emitterSize = CGSize(width: frame.width, height: 2)
        
    }
    
    func lancerConfettis() {
        // CAEmitterCell
        emitterCells = creerCell()
    }
    
    func creerCell() -> [Confetti] {
        var confettis = [Confetti]()
        for _ in (0...30){
            confettis.append(Confetti())
        }
        return confettis
    }
}
