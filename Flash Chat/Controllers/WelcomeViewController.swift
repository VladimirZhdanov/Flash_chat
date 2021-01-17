//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        
        animTyping(with: 0.1, title: K.appName)
    }
   
    
    func animTyping(with timeInterval: Double, title string: String) {
        var charIndex = 0.1
      
        for item in string {
            Timer.scheduledTimer(withTimeInterval: timeInterval * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(item)
            }
            charIndex += 1.0
        }
    }
    
}


