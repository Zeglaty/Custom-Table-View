# Custom-Table-View
Custom Table View

costuming the Table view Cells
before you start following a long make sure that you are working on a Table View then set a swift file to that Table view witch have the super class as UITablViweController  it will look as following : 

class TableTableViewController: UITableViewController {......}
1- Adding a custom Navigation Bar :
you can customize the Navigation bar as following 

        navigationItem.title = "Title"
        navigationController?.navigationBar.prefersLargeTitles = true
​
        navigationItem.rightBarButtonItem = editButtonItem
​
        view.backgroundColor = .white
you can put this code inside the viewDidLoad directly or make a method for example named myNavigationBarStyle(){ .... } and call it in side the viewDidLoad

the following steps will happen after you completed initializing the Cell as in Table View​

2 - Adding an Image : 
now we are going to add an image to the cell :

cell?.imageView?.image = UIImage(named:"iconName")
3 - Adding subtitle / details :
some things are not that clear so you need to show the user a little bet more detail or maybe extra information that is related .

cell?.detailTextLabel?.text = "extra details about cupcakes"
4 - Adding a Switch :
this will a little complicated and fun , first you need to make an object for the switch in this case i am going to name it toggel   :

    @objc func toggel(_ sender: UISwitch) {
        print("Switch!!")
    }
basically this is the action that will happen when the switch is switched on or off .

then we want to make the cell contain a switch so go back to method that you defined the cell in [1]  , the code will be as this :

        // size & position
        let switchy = UISwitch(frame: CGRect(x: 1, y: 1, width: 20, height: 20))
        // setting the initoal value of the switch to false == off 
        switchy.isOn = false
        switchy.addTarget(self, action: #selector(toggel(_:)), for: .valueChanged)
        // making the cell put on the switch
        cell?.accessoryView = switchy
the final result will look like  :


[1] : for reminding the Method was called 

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { ...... }
