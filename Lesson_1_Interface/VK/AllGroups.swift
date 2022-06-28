//
//  AllGroups.swift
//  VK
//
//  Created by Vlad Botyanovskii on 28.06.2022.
//

import UIKit

class AllGroups: UIViewController {

    
    @IBOutlet weak var toTextFieldGroups: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toPressedButtonGroups(_ sender: Any) {
        if let text = toTextFieldGroups.text {
            NotificationCenter.default.post(name: NSNotification.Name("toIdentification"), object:text)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
