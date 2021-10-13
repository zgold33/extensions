//
//  ViewController.swift
//  lesson14
//
//  Created by Сергей Золотухин on 07.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view1.addShadow()
//        view1.addCornerRadius()
//        view1.addGradient()
        configViews()
        view.addGradient2()
//        configLabels()
        replaceIntoTheString()
        addTextStyles()
        
    }
    
    func replaceIntoTheString() {
        let oldString = "im 32 years old"
        let newString = oldString.replace(target: "32", withString: "37")
        label1.text = newString
        label2.text = oldString
    }
    
    func configViews() {
        let views: [UIView] = [view1, view2, view3]
        views.forEach { $0.addCornerRadius() }
        views.forEach { $0.addShadow()}
        views.forEach { $0.addGradient()}
        views.forEach { $0.addBorder() }
    }
    
    func addTextStyles() {
        
        let labels: [UILabel] = [label1, label2, label3]
        
        labels.forEach { $0.addTextStyles() }
    }
    
}

