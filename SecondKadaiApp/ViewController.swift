//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Musashi Raijin on 2016/07/20.
//  Copyright © 2016年 masahiro.kitamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
        
//    @IBAction func inputName(sender: AnyObject) {
//        name.text = "name"
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.name = name.text
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }


}

