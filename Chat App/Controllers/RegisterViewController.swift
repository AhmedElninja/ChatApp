//
//  RegisterViewController.swift
//  Chat App iOS13
//
//  Created by Ahmed Alaa on 23/05/2023.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    //MARK: - Outlets.
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    //MARK: - Actions.
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    
}
