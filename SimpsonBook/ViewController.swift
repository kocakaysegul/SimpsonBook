//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ayşegül Koçak on 24.02.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Simpson object
        let homer = Simpson(name: "Homer", job: "Nuclear Safety", image: UIImage(named: "homer")!)
        let merge = Simpson(name: "Merge", job: "Housewife", image: UIImage(named: "merge")!)
        let bart = Simpson(name: "Bart", job: "Student", image: UIImage(named: "bart")!)
        let lisa = Simpson(name: "Lisa", job: "Student", image: UIImage(named: "lisa")!)
        let maggie = Simpson(name: "Maggie", job: "Baby", image: UIImage(named: "maggie")!)
        
        let homerArray = [homer,merge,bart, lisa,maggie]
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Homer Simpson"
        return cell
    }

    

}

