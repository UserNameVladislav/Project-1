//
//  MainViewController.swift
//  VK
//
//  Created by Vlad Botyanovskii on 19.05.2022.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recognizer = UITapGestureRecognizer(target: self, action:#selector(onTap))
        self.view.addGestureRecognizer(recognizer)
    }
    
    @objc func onTap() {
        print("Tap")
    }
    
    override func viewWillAppear(_ animated: Bool) {
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
       
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
   
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let checkResult = checkUserData()
        
        if !checkResult {
            showLoginError()
        }
        
        return checkResult
    }
    
    func checkUserData() -> Bool {
        let login = userNameTextField.text!, password = passwordTextField.text!
        if login == "admin" && password == "1234" {
            return true
        } else {
            return false
        }
    }
    func showLoginError() {
        let alert = UIAlertController(title: "Ошибка", message: "Введены неверные данные", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    

}

