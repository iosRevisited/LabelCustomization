//
//  ViewController.swift
//  LabelCustomization
//
//  Created by SaiSandeep on 14/11/17.
//  Copyright © 2017 iOSRevisited. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.98).isActive = true
        label.heightAnchor.constraint(equalTo: label.widthAnchor, multiplier: 1).isActive = true
        
        let normalString = "BLUE  RED  GREEN  PURPLE  YELLOW"
        
        let attributedText = NSMutableAttributedString(string: normalString)
        
        attributedText.addAttributes([NSAttributedStringKey.foregroundColor: UIColor.blue, NSAttributedStringKey.font: UIFont(name: "AvenirNext-Bold", size: 15)!], range: getRangeOfSubString(subString: "BLUE", fromString: normalString)) // Blue color attribute
        
        attributedText.addAttributes([NSAttributedStringKey.foregroundColor: UIColor.red, NSAttributedStringKey.font: UIFont(name: "Baskerville-BoldItalic", size: 27)!], range: getRangeOfSubString(subString: "RED", fromString: normalString)) // RED color attribute
        
        attributedText.addAttributes([NSAttributedStringKey.foregroundColor: UIColor.green, NSAttributedStringKey.font: UIFont(name: "Chalkduster", size: 19)!], range: getRangeOfSubString(subString: "GREEN", fromString: normalString)) // GREEN color attribute
        
        attributedText.addAttributes([NSAttributedStringKey.foregroundColor: UIColor.purple, NSAttributedStringKey.font: UIFont(name: "DINCondensed-Bold", size: 13)!], range: getRangeOfSubString(subString: "PURPLE", fromString: normalString)) // PURPLE color attribute
        
        attributedText.addAttributes([NSAttributedStringKey.foregroundColor: UIColor.yellow, NSAttributedStringKey.font: UIFont(name: "Futura-CondensedExtraBold", size: 24)!], range: getRangeOfSubString(subString: "YELLOW", fromString: normalString)) // YELLOW color attribute
        
        label.attributedText = attributedText
    }
    
    func getRangeOfSubString(subString: String, fromString: String) -> NSRange {
        let sampleLinkRange = fromString.range(of: subString)!
        let startPos = fromString.distance(from: fromString.startIndex, to: sampleLinkRange.lowerBound)
        let endPos = fromString.distance(from: fromString.startIndex, to: sampleLinkRange.upperBound)
        let linkRange = NSMakeRange(startPos, endPos - startPos)
        return linkRange
    }
}

