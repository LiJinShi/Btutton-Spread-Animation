//
//  ViewController.swift
//  button扩散
//
//  Created by Macx on 16/7/1.
//  Copyright © 2016年 LJS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    
    var anima: CABasicAnimation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        if anima == nil {return}
        anima?.duration = 0.3
        anima?.toValue = 1
        btn.layer.addAnimation(anima!, forKey: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func button(sender: UIButton) {
        Tool.shareInstance.isClick = false
        let animation = CABasicAnimation(keyPath: "transform.scale")
        animation.delegate = self
        animation.toValue = 30
        animation.duration = 0.2
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        anima = animation
        sender.layer.addAnimation(animation, forKey: "123")
    }
    
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        if Tool.shareInstance.isClick == true {return} 
        let vc = TwoVC()
        presentViewController(vc, animated: false, completion: nil)
    }
    
}

