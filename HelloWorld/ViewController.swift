//
//  ViewController.swift
//  HelloWorld
//
//  Created by 周梦 on 7/28/15.
//  Copyright (c) 2015 野狗部落. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myHelloButton : UIButton!
    
    
    var myLabel : UILabel = UILabel(frame: CGRect(x:0,y:0,width:300,height:60))
    var resetButton : UIButton = UIButton(frame: CGRect(x:0,y:0,width:250,height:60))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.text = "Say Hello"
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.textColor = UIColor.blueColor()
        myLabel.center = CGPointMake(160,200)
        
        view.addSubview(myLabel)
        
        resetButton.setTitle("Reset", forState: .Normal)
        resetButton.backgroundColor = UIColor.greenColor()
        resetButton.addTarget(self, action: "resetMSG", forControlEvents: .TouchUpInside)
        resetButton.center = CGPointMake(160, 300 )
        
        view.addSubview(resetButton);
        
        myHelloButton.backgroundColor = UIColor.yellowColor()
        myHelloButton.center = CGPointMake(160, 200)
        
    }

    @IBAction func sayHello(){
        myLabel.text = "Hello world";
        myLabel.textColor = UIColor.blueColor()
    }
    
    func resetMSG() {
        
        myLabel.text = "Say Hello"
        
        myLabel.textColor = UIColor.redColor()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

