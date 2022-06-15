//
//  ViewController.swift
//  SegueApp
//
//  Created by Fulya Sarıyar on 15.06.2022.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonNextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            //as--casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
            
        }
    }
}

