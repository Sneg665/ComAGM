//
//  ListTVC.swift
//  ComAGM
//
//  Created by Владимир Уланов on 06.02.2019.
//  Copyright © 2019 UlanovApp. All rights reserved.
//

import UIKit

class ListTVC: UITableViewController {

var allData = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        allData += [
            Product(name: "iPhone 6S",
                    type: "Phone",
                    imagePath: "house-outline",
                    info: "The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of essential things more quickly and simply."),
            
            Product(name: "iPad Pro",
                    type: "Tablet",
                    imagePath: "house-outline",
                    info: "iPad Pro is more than the next generation of iPad — it’s an uncompromising vision of personal computing for the modern world. It puts incredible power that leaps past most portable PCs at your fingertips. It makes even complex work as natural as touching, swiping, or writing with a pencil."),
            
            Product(name: "Apple Watch",
                    type: "Watch",
                    imagePath: "house-outline",
                    info: "Instantly receive and respond to your favorite notifications. Get the motivation you need to stay active and healthy. Express your personal style in a whole new way. From the way it works to the way it looks, Apple Watch isn’t just something you wear. It’s an essential part of who you are."),
            
            Product(name: "iMac",
                    type: "Computer",
                    imagePath: "house-outline",
                    info: "The idea behind iMac has never wavered: to craft the ultimate desktop experience. The best display, paired with high-performance processors, graphics, and storage — all within an incredibly thin, seamless enclosure. And that commitment continues with the all-new 21.5‑inch iMac with Retina 4K display."),
            
            Product(name: "Macbook Pro",
                    type: "Computer",
                    imagePath: "house-outline",
                    info: "A groundbreaking Retina display. A new force-sensing trackpad. All-flash architecture. Powerful dual-core and quad-core Intel processors. Together, these features take the notebook to a new level of performance. And they will do the same for you in everything you create."),
        ]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        // Даём знать таблицы, что нам необходимо количество ячеек равное количеству объектов в массиве
        return  allData.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        //return cell
        
        // Инициализируем объект ячейки с идентификатором "Cell"
        // Это тот самый идентификатор, который мы задали ячейке в сториборде
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Получаем объект Product под индексом равным значению indexPath.row
        let product: Product = self.allData[indexPath.row]
        
        // Заполняем ячейку данными
        cell.imageView?.image       = product.getImage()
        cell.textLabel?.text        = product.name
        cell.detailTextLabel?.text  = product.type
        
        // Отдаём таблице ячейку
        return cell
    }
 

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
