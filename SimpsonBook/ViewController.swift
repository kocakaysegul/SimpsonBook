//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ayşegül Koçak on 24.02.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var mySimpson = [Simpson]()
    var chosenSimpson : Simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Simpson object
        let homer = Simpson(name: "Homer", job: "Nuclear Safety", image: UIImage(named: "homer")!)
         let marge = Simpson(name: "Marge", job: "Housewife", image: UIImage(named: "marge")!)
        let bart = Simpson(name: "Bart", job: "Student", image: UIImage(named: "bart")!)
        let lisa = Simpson(name: "Lisa", job: "Student", image: UIImage(named: "lisa")!)
        let maggie = Simpson(name: "Maggie", job: "Baby", image: UIImage(named: "maggie")!)

        mySimpson.append(homer)
        mySimpson.append(marge)
        mySimpson.append(bart)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! DetailVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }

    

}

