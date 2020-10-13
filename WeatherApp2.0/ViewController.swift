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
        
        print("Starting")
        
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=127bd3c7027c52a48bb18c318d0e89c3")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                print(error!)
            }else{
                if let urlContent = data {
                    
                    do {
                        let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        
                        print(jsonResult)
                        
                    } catch  {
                        print("Błąd danych JSON")
                    }
                }
            }
        }
        
        task.resume()
    }


}

