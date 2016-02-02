//
//  ViewController.swift
//  stopWatch
//
//  Created by Reem Alattas on 2/2/16.
//  Copyright © 2016 ReemAlattas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    var timer = NSTimer()
    
    var count = 0
    
    func result() {
        count++
        countLabel.text = "\(count)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

