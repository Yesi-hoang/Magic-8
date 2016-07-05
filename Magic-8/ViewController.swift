//
//  ViewController.swift
//  Magic-8
//
//  Created by 黄丽萍 on 16/7/5.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var adviceTextField: NSTextField!

    @IBOutlet weak var ballImageView: NSImageView!
    @IBOutlet weak var nameTextField: NSTextField!
    
    @IBOutlet weak var showLabel: NSTextField!
    @IBOutlet weak var sureButton: NSButton!
    
    
    let adviceList = ["Yes",
                      "NO",
                      "Ray says 'do it!'",
                      "Try again later",
                      "How can I know?",
                      "Totally",
                      "Never",]
    override func viewDidLoad() {
        super.viewDidLoad()
        adviceTextField.hidden = true
        ballImageView.image = NSImage(named: "8ball")
           }

    override var representedObject: AnyObject? {
        didSet {
            
        // Update the view, if already loaded.
        }
       
    }
    
    @IBAction func sureButtonClick(sender: NSButton) {
          showLabel.stringValue = "hello \(nameTextField.stringValue)"
        
    }
    @IBAction func tapGestureClickd(sender: AnyObject) {
        if (adviceTextField.hidden) {
            if let advice = adviceList.randomElement{
                adviceTextField.stringValue = advice
                adviceTextField.hidden = false
                ballImageView.image = NSImage(named: "magic8ball")
            }
            
        }else{
            adviceTextField.hidden = true
            ballImageView.image = NSImage(named: "8ball")
            
        }
        
    }

}
// 给NSArry添加新属性
extension Array{
    var randomElement:Element?{
        if count < 1 {
            return .None
        }
        let randomIndex = arc4random_uniform(UInt32(count))
        return self[Int(randomIndex)]
    }
}


