//
//  ViewController.swift
//  Kenshu5
//
//  Created by Yuka Uematsu on 2020/05/24.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//


    import UIKit

    class ViewController: UIViewController {
        
        //空の配列
        var fruitsArray: [Fruits] = []
        
        @IBOutlet var fruitslabel : UILabel!
        @IBOutlet var questionlabel : UILabel!
        
        @IBOutlet var question1button : UIButton!
        @IBOutlet var question2button : UIButton!
        @IBOutlet var question3button : UIButton!
        
        var index: Int = 0
        

        override func viewDidLoad() {
            super.viewDidLoad()
            
            //配列
            fruitsArray.append(Fruits(name: "もも"))
            fruitsArray.append(Fruits(name: "りんご"))
            fruitsArray.append(Fruits(name: "いちご"))
            
            SetUI()
        }
        
        //
        func SetUI() {
            fruitslabel.text = fruitsArray[index].name
        }
            
          
            class Fruits {
                      var name: String!
                      init(name: String) {
                          self.name = name
                      }
        }
         

        

        @IBAction func mae() {
        index = index - 1
            SetUI()
        }

        @IBAction func tugi() {
        index = index + 1
            SetUI()

    }

    }


