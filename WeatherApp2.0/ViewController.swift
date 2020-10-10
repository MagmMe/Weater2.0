//
//  ViewController.swift
//  WeatherApp2.0
//
//  Created by Marcin Magiera on 10/10/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submit(_ sender: Any) {
        
        let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=Bieruń&appid=127bd3c7027c52a48bb18c318d0e89c3")
        print(url ?? "Udało się pobrać dane")
        
    }
    
}

