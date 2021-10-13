//
//  Extension.swift
//  lesson14
//
//  Created by Сергей Золотухин on 11.10.2021.
//

import UIKit

extension UIView {
    
    func addShadow() {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 15, height: 15)
        layer.shadowRadius = 10
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
    }
    
    func addCornerRadius() {
        layer.cornerRadius = frame.height / 2
    }
    
    func addGradient() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.cornerRadius = frame.height / 2
        gradient.colors = [UIColor.red.cgColor, UIColor.black.cgColor]
        layer.insertSublayer(gradient, at: 0)
    }
    
    func addGradient2() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
//        gradient.cornerRadius = frame.height / 2
        gradient.colors = [UIColor.green.cgColor, UIColor.orange.cgColor]
        layer.insertSublayer(gradient, at: 0)
    }
    
    func addBorder() {
        layer.borderWidth = 2
        layer.borderColor = UIColor.blue.cgColor
    }
    
    func getRandomColor() -> UIColor {  // создаем вызов случайного цвета
             //Generate between 0 to 1
             let red:CGFloat = CGFloat(drand48())
             let green:CGFloat = CGFloat(drand48())
             let blue:CGFloat = CGFloat(drand48())

             return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
        }
    
}

extension UILabel {
    
    func addTextStyles() {
        textColor = UIColor.green
        shadowColor = UIColor.orange
        shadowOffset = CGSize(width: 1, height: 1)
        font = UIFont.systemFont(ofSize: 30, weight: .bold)
    }
}


import Swift // or Foundation // change worlds into the string

extension String {

    func replace(target: String, withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString)
    }

}

// переход на вью контроллер

//@IBAction func actionToTheDictionary(_ sender: Any) {
//
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//    if let controller = storyboard.instantiateViewController(identifier: "DictionaryViewControllerID") as? DictionaryViewController {
//        controller.modalPresentationStyle = .overFullScreen
//        present(controller, animated: true)
//    }
//
//    переход обратно на вью контроллер

//    @IBAction func actionBack(_ sender: Any) {
//        dismiss(animated: true)
//    }





