//
//  Dictionary.swift
//  lesson14
//
//  Created by Сергей Золотухин on 13.10.2021.
//

import UIKit

class DictionaryMethodsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Смотрим сколько раз в МАССИВЕ встречается слово, и выводим его в словарь
        
//        let human1 = "Filip"
//        let human2 = "Kirill"
//        let human3 = "Kristina"
//        let human4 = "Sabina"
//
//        let array: [String] = [human1, human2, human3, human4, human1, human2, human3, human4, human1, human2, human3, human4]
//
//        var existCountDict: [String: Int] = [:]
//
//        array.forEach { word in
//            if let count = existCountDict[word] {
//                existCountDict[word] = count + 1
//            } else {
//                existCountDict[word] = 1
//            }
//        }
//        print(existCountDict)
        
        
        let human1 = "Filip"
        let human2 = "Kirill"
        let human3 = "Kristina"
        let human4 = "Sabina"
        
        
        //добавляем элементы в пустой массив
        var dictionary: [String: String] = [:]
        
        dictionary["human1"] = human1
        dictionary["human2"] = human2
        dictionary["human3"] = human3
        dictionary["human4"] = human4

        //сколько элементов в словаре
//        print(dictionary.count)
        
        //проверяем пустой словарь или нет
//        print(dictionary.isEmpty)
        
        //меняем значение в словаре по ключу
//        dictionary["human1"] = "Kostya"
//        print(dictionary)
        
        //устанавливаем значение для ключа если оно не существует, и обновляет значение для ключа, если оно существует
//        dictionary.updateValue("Marika", forKey: "human3")
//        print(dictionary)
        
//        dictionary.updateValue("Marika", forKey: "human5")
//        print(dictionary)
        
        //удаляем значение и ключ
//        dictionary.removeValue(forKey: "human2")
//        print(dictionary)
        
        //выведем ключ: значение всех элементов словаря
//        for (person, name) in dictionary {
//            print("\(person): \(name)")
//        }
        
        //вывести все ключи без значений
//        for person in dictionary.keys {
//            print("Person: \(person)")
//        }
        
        //вывести все значения без ключей
//        for names in dictionary.values {
//            print("names: \(names)")
//        }
        
        //создаем массив ключей
//        var keys = Array(dictionary.keys)
//        print(keys)
        
        //создаем массив значений
//        var values = Array(dictionary.values)
//        print(values)
        
    }
}
