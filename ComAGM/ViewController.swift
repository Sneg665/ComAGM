//
//  ViewController.swift
//  ComAGM
//
//  Created by Владимир Уланов on 15.11.2018.
//  Copyright © 2018 UlanovApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let comParametr = "Hi"
    
    @IBOutlet weak var labelWorkButton: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pushButtonCom(_ sender: UIButton) {
        labelWorkButton.text? = comParametr
        let adress = "https://jsonplaceholder.typicode.com/posts"
        //let adress2 = "http://agm-1c-01/AGM_IOS/ws/request.1cws?wsdl"
        guard let url = URL(string: adress) else {return}
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            guard let data = data else { return}
            print(data)
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch{
                print(error)
            }
        }.resume()
        
        
        
    }
    
    @IBAction func tappedPost(_ sender: UIButton) {
        let adress = "https://jsonplaceholder.typicode.com/posts"
        //let adress2 = "http://agm-1c-01/AGM_IOS/ws/request.1cws?wsdl"
        guard let url = URL(string: adress) else {return}
        let parameters = ["username": "ivan", "massage" : "Hello Volodia"]
        var request = URLRequest(url: url) //Может тут надо задавать параметры выбрав другой метод
        request.httpMethod = "POST"
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options:[]) else { return}
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
            }
            guard let data = data else {return}
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            }catch {
                print(error)
            }
        }.resume()
        
    }
}

