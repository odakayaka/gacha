//
//  ViewController.swift
//  GachaTech
//
//  Created by 尾高文香 on 2016/06/07.
//  Copyright © 2016年 com.odakaayaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gacha(){
//        SegueのIdentifierが"result"のViewへ画面遷移
        self.performSegueWithIdentifier("result", sender: nil)
    }


}

