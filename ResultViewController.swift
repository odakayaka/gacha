//
//  ResultViewController.swift
//  GachaTech
//
//  Created by 尾高文香 on 2016/06/07.
//  Copyright © 2016年 com.odakaayaka. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
//    1番後ろの背景画像を表示するためのUIImageView
    @IBOutlet var haikeiImageView: UIImageView!
    
//    1番表面のモンスター画像を表示するためのUIImageView
    @IBOutlet var monsterImageView: UIImageView!
    
//    モンスター画像を保存しておくUIImage型の配列
    var monsterArray: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        0~9の間でランダムにInt型の数字を発生させる
        let number = Int( rand() % 10)
        
//      monsterArray配列に画像を10枚保存する
        
        monsterArray = [UIImage(named: "monster001.png")!,
                        UIImage(named: "monster002.png")!,
                        UIImage(named: "monster003.png")!,
                        UIImage(named: "monster004.png")!,
                        UIImage(named: "monster005.png")!,
                        UIImage(named: "monster006.png")!,
                        UIImage(named: "monster007.png")!,
                        UIImage(named: "monster008.png")!,
                        UIImage(named: "monster009.png")!,
                        UIImage(named: "monster010.png")!
        ]
        
//        monsterArrayの中のnumber番目をランダムに表示させる
        monsterImageView.image = monsterArray[number]
        
//        numberの数字により背景画像を切替える
        
        NSLog("%d", number)
        
        if number == 9{
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        }else if number > 6{
            haikeiImageView.image = UIImage(named: "bg_red.png")
        }else{
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        }
    }
    
//    このResultViewontrollerが表示される度に呼び出すメソッド
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
//        アニメーションの中でもtransformさせるキーパスを指定
        let animation = CABasicAnimation(keyPath: "transform")
        
//        アニメーション開始時の数値
        animation.fromValue = NSNumber(double: 0)
//        アニメーション終了時の数値
        animation.toValue = NSNumber(double: 2 * M_PI)
//        Z軸を中心としたアニメーションにする
        animation.valueFunction = CAValueFunction(name: kCAValueFunctionRotateZ)
//        アニメーションの速さを指定する
        animation.duration = 5
//        アニメーションを何回繰り返すか決める
        animation.repeatCount = Float.infinity
//        どのレイヤーをアニメーションさせるか指定する
        haikeiImageView.layer.addAnimation(animation, forKey: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func modoru(){
//        前の画面に戻るための処理
        self.dismissViewControllerAnimated(true, completion: nil)
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
