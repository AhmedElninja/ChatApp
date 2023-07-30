//
//  WelcomeViewController.swift
//  Chat App iOS13
//
//  Created by Ahmed Alaa on 23/05/2023.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    //MARK: - Properties.
    var charIndex = 0.0
    let titleText = K.appName
    
    //MARK: - Outlets.
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    //MARK: - LifeCycle Method.
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
}
