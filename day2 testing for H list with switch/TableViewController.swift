//
//  TableTableViewController.swift
//  day2 testing for H list with switch
//
//  Created by ABDALMAGID on 7/7/19.
//  Copyright © 2019 ABDALMAGID. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController {


   var list = ["Coffee", "Raindrops", "Squirrel One", "Squirrel Two"]
    let images = ["1","2","3","4","5"]
    override func viewDidLoad() {
                super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")


////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        navigationItem.title = "Title"
        navigationController?.navigationBar.prefersLargeTitles = true

        navigationItem.rightBarButtonItem = editButtonItem

        view.backgroundColor = .white
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            }




            override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                // #warning Incomplete implementation, return the number of rows
                return list.count
            }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell : UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellID")

        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellID")
        cell?.selectionStyle = .none

//        cell?.imageView?.image = UIImage(named: images[indexPath.row])
        cell?.imageView?.image = UIImage(named: "8")
        cell?.textLabel?.text = list[indexPath.row]
        cell?.detailTextLabel?.text = "details for \(list[indexPath.row])"

        //MARK: - definding a switch to the table view
        let switchy = UISwitch(frame: CGRect(x: 1, y: 1, width: 20, height: 20))
        switchy.isOn = false
        switchy.addTarget(self, action: #selector(toggel(_:)), for: .valueChanged)
        cell?.accessoryView = switchy

        return cell!
    }
////////////////////////////////////////////   NOT NEEDED I THINK   ////////////////////////////////////////////////////////////////////
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete {
            self.list.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        let newVC = NewViewController()
        //        navigationController?.pushViewController(newVC, animated: true)

        let cell = tableView.cellForRow(at: indexPath)

        print(cell?.detailTextLabel?.text ?? "")

    }
    
    @objc func toggel(_ sender: UISwitch) {
        print("Switch!!")
    }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}
