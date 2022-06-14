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
    

}

