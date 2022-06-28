//
//  MyFriendGroups.swift
//  VK
//
//  Created by Vlad Botyanovskii on 28.06.2022.
//

import UIKit

class MyFriendGroups: UIViewController {

    @IBOutlet weak var toTextFieldMyFriendG: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(catchMessage(_:)), name: NSNotification.Name("toIdentification"), object: nil)
    }
    
    @objc func catchMessage(_ notification: Notification) {
        if let text = notification.object as? String {
            toTextFieldMyFriendG.text = text
        }
    }
    

}
