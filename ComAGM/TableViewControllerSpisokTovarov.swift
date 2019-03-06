//
//  TableViewControllerSpisokTovarov.swift
//  ComAGM
//
//  Created by Владимир Уланов on 27.02.2019.
//  Copyright © 2019 UlanovApp. All rights reserved.
//

import UIKit



struct ResponseItem {
    var code: String
    var description: String
}
struct Response {
    var value: [ResponseItem]
}
extension Response: Decodable {}

extension ResponseItem: Decodable {
    enum CodingKeys: String, CodingKey {
        case code = "Code"
        case description = "Description"
    }
}







var kolStrok: Int = 0
//var massRez = {}

class TableViewControllerSpisokTovarov: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
       /* struct Odata: Codable {
            struct Value: Codable {
                let Code: Int
                let Description: String
            }
        }
        
        
        let inputData = inputJSON.data(using: .utf8)!
        let decoder = JSONDecoder()
        let stat = try! decoder.decode(Odata.self, from: inputData)
        dump(stat)*/

        let adress = "http://agm-1c-01/WEB2/odata/standard.odata/Catalog_Klient?$format=json"
        guard let url = URL(string: adress) else {return}
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
           if let response = response {
                //print(response)
            }
            guard let data = data else { return}
            //print(data)
            do {
               // let jsonString = try JSONSerialization.jsonObject(with: data, options: [])
                //if perem == 0 {
                //print(jsonString)
                
                let decoded = try JSONDecoder().decode(Response.self, from: data)
                //print(decoded.value[0])
                //print(decoded.value.count)
                 kolStrok = decoded.value.count
               //struct Value: Codable {
                  //  var Code: Int
                //    var Description: String
               // }

                //let inputData = jsonString.data(encoding: .utf8)!
               // let inputData = (jsonString as AnyObject).data(encoding: .utf8)!
                //let decoder = JSONDecoder()
                //let stat = try! decoder.decode(Value.self, from: inputData)
               // print(stat)
                //let product: Value = try! JSONDecoder().decode(Value.self, from: data)
                
                
                 //   perem += 1
                 //  print(product)
                //}
            } catch{
                //print(error)
            }
            }.resume()
     
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return kolStrok
    }

    
   // override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

       // return cell
     
        // Инициализируем объект ячейки с идентификатором "Cell"
        // Это тот самый идентификатор, который мы задали ячейке в сториборде
       // let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Получаем объект Product под индексом равным значению indexPath.row
       // let product: Product = self.allData[indexPath.row]
        
        // Заполняем ячейку данными
       // cell.imageView?.image       = product.getImage()
       // cell.textLabel?.text        = product.name
        //cell.detailTextLabel?.text  = product.type
        
        // Отдаём таблице ячейку
       // return cell
     
     
     
     
     
    //}
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
