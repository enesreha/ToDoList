

import UIKit
// Burada ToDoListViewController,UITableViewController'in subclassi
class ToDoListViewController: UITableViewController {//burada superclassi UITableViewControllera cevirmemiz gerek cunku view controlleri sildik ve table view controllerimizi initial view controller yaptik

    //baslangicta calismasi icin hard coded todolist arrayi olusturuyorum
    let itemArray = ["Call Chandler", "Buy Eggs", "Get a haircut"]


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
// TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //L ---> Local variable V--> Global variable. Global variable bize UITableViewControlleri inherit ettigimiz icin geliyor. Local variable ise su an icinde bulundugumuz metoddan geliyor. Su noktada asagida hangisini sectigimiz onemli degil cunku ikisi de ayni seye refere ediyor
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)//Identifier'a storyboardda prototype cell'e verdigimiz ismi yaziyoruz
        
        //herbir cell'de ne yazacagini belirtiyoruz
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
     }

    //TableView Delegate Methods
    //Herhangi bir celle tikladigimizda bu methodlar calisacak
    //Burada her bir cell'i secip bunu debug console'da yazdirmak ve her bir celli sectikten sonra yanina bir check mark koymak ve tekrar tiklarsam uncheck etmek istiyorum
    //This tableview delegate method detects which row was selected and we use that informationto check to see if the selected row has a checkmark already.
  
    //this method tells the delegate (which is the current class) that the specified row is now selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   //     print(indexPath.row)//when we select one of the cells, this is going to write a number in debug console and that number is gonna correspond to which cell we selected.
        
        //now i wanna print out not the number of the row but the  item
     //   print(itemArray[indexPath.row])
        
        
        //I want checkmark next to the cell which I have selected.We'll use an accessory for this. To do this we're going to storyboard and select ToDoItemCell, on right there is accessory part. We select check mark. But it's gonna be default. when we run our app it's gonna be selected even we don't select. so we select none and write a method.We give the cell that we selected a checkmark as an accessory
   //     tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark//this is grabbing a reference to the cell that is at a particular index path. So the cell at this index path in our table is gonna have an accessory type of checkmark.
        
        //now we're gonna remove the checkmarks when we reselect it
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{//it means check to see if the current cell that selected has an accessory type of checkmark
            tableView.cellForRow(at: indexPath)?.accessoryType = .none //and if so we want to change it to none
        }else{
             tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark//but otherwise if it doesn't have a check mark then we want to say add a checkmark
        }
        
        
        //when we choose the item it turn grey and I don't want that
        tableView.deselectRow(at: indexPath, animated: true)//now it's gonna look different. When I select a row it flashes gray briefly but than it goes back to being deselected and white. (It just looks better)
        
        
        
    }
    
    
    }



