//
//  ViewController.swift
//  2weekStoryBoard
//
//  Created by 시혁 on 2023/02/14.
//

import UIKit

class ViewController: UIViewController {
    var isLeadingFoucused = true
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        print(#fileID, #function, #line, "- button" )
        self.view.layoutIfNeeded()
        UIView.animate(withDuration: 0.5){
            if self.isLeadingFoucused {
                self.trailing.priority = UILayoutPriority.defaultHigh
                self.leading.priority = UILayoutPriority.defaultLow
            }else {
                self.leading.priority = UILayoutPriority.defaultHigh
                self.trailing.priority = UILayoutPriority.defaultLow
            }
            self.isLeadingFoucused.toggle()
            self.view.layoutIfNeeded()
        }
    }
    
}

