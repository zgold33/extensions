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
    
    func configLabel() {
        
        let text = "Haters gonna hate"
        let font = UIFont.systemFont(ofSize: 25, weight: .bold)
        
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.red
        shadow.shadowBlurRadius = 5
        shadow.shadowOffset = CGSize(width: 3, height: 3)
        shadow.shadowColor = UIColor.green
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        paragraphStyle.firstLineHeadIndent = 0 // смещение текста, можно сместить за лейбл
        
        let textColor = UIColor.red
        let attributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font,
                                                         NSAttributedString.Key.foregroundColor: textColor,
                                                         NSAttributedString.Key.shadow: shadow,
                                                         NSAttributedString.Key.paragraphStyle: paragraphStyle
        ]
        
        let attributedText = NSMutableAttributedString(string: text, attributes: attributes)
        
        
        //find range of text "gonna" and set attribute to this range
        let range: NSRange = attributedText.mutableString.range(of: "gonna", options: .caseInsensitive)
        
        if range.location != NSNotFound {
            attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.yellow, range: range)
        }
        
        attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.yellow, range: NSRange(location: 2, length: 2))
//        attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: NSRange(location: 8, length: 3))
        self.attributedText = attributedText

        //делаем ссылку из строки
//        let attributedString = NSMutableAttributedString(string: "Want to learn IOS?")
//        attributedString.addAttribute(.link, value: "https://github.com", range: NSRange(location: 0, length: 18))
//        self.attributedText = attributedString

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


//переход на вью контроллер через nav bar

//@IBAction func RoadDriver(_ sender: Any) {
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//
//    let controller = storyboard.instantiateViewController(identifier: "RoadDriverViewControllerID")
//    navigationController?.pushViewController(controller, animated: true)
//}






