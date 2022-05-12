//
//  ViewController.swift
//  LinkwLabel
//
//  Created by Franco Rodrigues on 5/12/22.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    @IBOutlet var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributedString = NSMutableAttributedString(string: "What to lear iOS?")
        attributedString.addAttribute(.link, value: "https://www.apple.com", range: NSRange(location: 19, length: 55))
        
        textView.attributedText = attributedString
    }
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
    }
    
}


