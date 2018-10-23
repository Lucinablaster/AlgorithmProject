//
//  AlgorithmViewController.swift
//  AlgorithmProject
//
//  Created by Baugh, Tyler on 10/23/18.
//  Copyright © 2018 Baugh, Tyler. All rights reserved.
//

import UIKit

class AlgorithmViewController: UIViewController
{
    @IBOutlet weak var algorithmText: UILabel!
    
    @IBOutlet weak var swiftImage: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }
    public func formatAlgorithm() -> Void
    {
        let title : String = "How to create an IOS Project"
        let assumption : String = "**This is all assuming XCODE is open**"
        let stepOne : String = "Go to file, then new, then project."
        let stepTwo : String = "Use command and left clicking to select multiple files at a time."
        let stepThree : String = "Select 'AppDelegate.swift', 'Assets.xcassets', and 'Info.plist' with command left click, then right click and select 'New Group from Selection' and name the folder 'Resources'"
        let stepFour : String = "Select the “ViewController.swift” then right click and make a group for that."
        let stepFive : String = "Then select “Main.storyboard” and “LaunchScreen.storyboard” and name that group “View”"
        let stepSix : String = "Make a new group by right clicking on the folder containing everything that is inside project. Usually named the same thing. For me it’s “FirstIOSProject”. Once you make this group, name it “Model”."
        let stepSeven : String = "Right click and create a swift file. Then name it kind of like a tool for the purpose for the app. i.e. My app was to change the color of the screen, so I named it “ColorTool.swift”."
        
        let algorithm = [stepOne, stepTwo, stepThree]
        
        let attributesDictinary = [NSAttributedStringKey.font : algorithm]
        let fullAttributedString = NSMutableAttributedString: title, attributes: attattributesDictinary
        for step in algorithm
        {
            let bullet : String = "Death"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep: NSMutableParagraphStyle = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
                        attributedStringStep : NSMutableAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        

        return outlineStyle
    }
}
