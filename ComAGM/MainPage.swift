//
//  MainPage.swift
//  ComAGM
//
//  Created by Владимир Уланов on 07.02.2019.
//  Copyright © 2019 UlanovApp. All rights reserved.
//

import UIKit

class MainPage: UITableViewController {
var listNavigations = [GeneralDescriptionCell]()
    override func viewDidLoad() {
        super.viewDidLoad()
        listNavigations += [
            GeneralDescriptionCell(name: "Поиск по каталогу",
                                   type: "",
                                   imagePath: "",
                                   info: ""),
            
            GeneralDescriptionCell(name: "Заказы",
                    type: "",
                    imagePath: "",
                    info: ""),
            
            GeneralDescriptionCell(name: "Избранное",
                    type: "",
                    imagePath: "",
                    info: ""),
            
            GeneralDescriptionCell(name: "Акции",
                    type: "",
                    imagePath: "",
                    info: ""),
            
            GeneralDescriptionCell(name: "Адреса магазинов",
                    type: "Computer",
                    imagePath: "",
                    info: ""),
            
            GeneralDescriptionCell(name: "Карта клиента",
                    type: "",
                    imagePath: "",
                    info: ""),
            
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
        return listNavigations.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GeneralCells", for: indexPath)

        // Configure the cell...
        // Заполняем ячейку данными
        //cell.imageView?.image       = product.getImage()
        //cell.textLabel?.text        = "KzkZ"
        //cell.detailTextLabel?.text  = "ddfv"//product.type
        
        // Получаем объект Product под индексом равным значению indexPath.row
        let product: GeneralDescriptionCell = self.listNavigations[indexPath.row]
        
        // Заполняем ячейку данными
        cell.imageView?.image       = product.getImage()
        cell.textLabel?.text        = product.name
        cell.detailTextLabel?.text  = product.type
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
