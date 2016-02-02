//
//  ViewController.swift
//  stopWatch
//
//  Created by Reem Alattas on 2/2/16.
//  Copyright © 2016 ReemAlattas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var count = 0
    
    func updateTime() {
        count++
        countLabel.text = "\(count)"
    }

    
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        count = 0
        countLabel.text = "\(count)"
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

