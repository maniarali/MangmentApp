//
//  ViewController.swift
//  Experiment
//
//  Created by MA Maniar on 4/22/15.
//  Copyright (c) 2015 maniarali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var addButton: UIButton!
    
    var textField:UITextField!
    var textLabel:UILabel!
    var btn:UIButton!
    
    var i:CGFloat = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

   
    @IBAction func addButtonAction(sender: AnyObject) {
     
        let buttonWidth = addButton.frame.width
        let buttonHeight = addButton.frame.height
        
        //adding text field
        textField = UITextField()
        textField.frame = CGRectMake(addButton.center.x-42, addButton.center.y+7, buttonWidth, buttonHeight)
        textField.backgroundColor = UIColor.blueColor()
        textField.placeholder = "ADD YOUR TASK"
        self.view.addSubview(textField)
        
        
        // adding done button on text
        btn = UIButton.buttonWithType(UIButtonType.System) as UIButton
        btn.frame = CGRectMake(textField.frame.maxX-61, textField.frame.maxY-41, textField.bounds.width/4, textField.bounds.height)
        btn.setTitle("Done", forState: UIControlState.Normal)
        btn.addTarget(self, action: "actionToPerform:", forControlEvents: UIControlEvents.TouchUpInside)
        btn.backgroundColor = UIColor.purpleColor()
        btn.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.view.addSubview(btn)
        
        
    }

    func actionToPerform(sender:AnyObject){
        
        generateLabel()
        hideObject(true)
        
        
    }
    func increaseView(){
        
    }
    func generateLabel(){
        i+=35
        self.textLabel = UILabel()
        self.textLabel.frame = CGRectMake(progressBar.frame.minX,progressBar.frame.minY+i,progressBar.frame.width,progressBar.frame.height/4)
        self.textLabel.backgroundColor = UIColor.grayColor()
        self.textLabel.textColor = UIColor.whiteColor()
        self.textLabel.textAlignment = NSTextAlignment.Center
        self.textLabel.text = textField.text
        self.view.addSubview(textLabel)
    }
    
    //hides after taking text input
    func hideObject(bool:Bool){
        btn.hidden = bool
        textField.hidden = bool
        
    }
    
    
    
}

