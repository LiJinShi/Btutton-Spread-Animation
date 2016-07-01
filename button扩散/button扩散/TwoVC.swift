//
//  TwoVC.swift
//  button扩散
//
//  Created by Macx on 16/7/1.
//  Copyright © 2016年 LJS. All rights reserved.
//

import UIKit

class TwoVC: UIViewController {

//    var animati: CABasicAnimation?
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.redColor()
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        dismissViewControllerAnimated(false) { 
            Tool.shareInstance.isClick = true
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
