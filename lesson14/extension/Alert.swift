//
//  Alert.swift
//  lesson14
//
//  Created by Сергей Золотухин on 18.10.2021.
//

import UIKit

extension UIViewController {
    
    //show ask for password with confirm / cancel / and enter text label
    
    func showPasswordAlert() {
        
        let alert = UIAlertController(title: "Enter your password here, please", message: "make sure there is no one behind", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your password here..."
        })
        
        alert.addAction(UIAlertAction(title: "confirm password", style: .default, handler: { action in
            
            if let password = alert.textFields?.first?.text {
                print("Your password: \(password)")
            }
        }))
        alert.addAction(UIAlertAction(title: "cancel password", style: .cancel, handler: { action in
            print("no")
        }))
        
        present(alert, animated: true)
    }
    
    //show one button alert
    
    func showOneButtonAlert (withTitle title: String, message : String, action1: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: action1, style: .default, handler: nil))
        present(alert, animated: true)
    }
    
    //show two buttons alert
    
    func showTwoButtonsAlert(withTitle title: String, message : String, action1: String, action2: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: action1, style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: action2, style: .cancel, handler: nil))
        present(alert, animated: true)
    }
    
}
