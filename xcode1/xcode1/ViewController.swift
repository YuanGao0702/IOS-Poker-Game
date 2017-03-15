//
//  ViewController.swift
//  xcode1
//
//  Created by yuan gao on 2/19/17.
//  Copyright © 2017 yuan gao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var card1: UIImageView!
    @IBOutlet weak var card2: UIImageView!
    @IBOutlet weak var card3: UIImageView!
    @IBOutlet weak var card4: UIImageView!
    @IBOutlet weak var card5: UIImageView!
    @IBOutlet weak var score: UILabel!
    var number = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func add(_ sender: AnyObject) {
        let rd = arc4random_uniform(13)+1
        
        if card1.image == UIImage(named:"back") {
            card1.image = UIImage(named:"\(rd)")
        }
        else if card2.image == UIImage(named: "back"){
            card2.image = UIImage(named:"\(rd)")
        }
        else if card3.image == UIImage(named: "back"){
            card3.image = UIImage(named:"\(rd)")
        }
        else if card4.image == UIImage(named: "back"){
            card4.image = UIImage(named:"\(rd)")
        }
        else if card5.image == UIImage(named: "back"){
            card5.image = UIImage(named:"\(rd)")
        }
        number = number+Int(rd)
        score.text = String(number)
    }
    @IBAction func reset(_ sender: AnyObject) {
        card1.image = UIImage(named: "back")
        card2.image = UIImage(named: "back")
        card3.image = UIImage(named: "back")
        card4.image = UIImage(named: "back")
        card5.image = UIImage(named: "back")
        score.text = "0"
        number = 0
    }
    
    


}

