//
//  ViewController.swift
//  AgingPeople
//
//
//
/*
 Create an App which displays 12 names in a UITableView. Every time the app loads, it should also show a random age (5 - 95) for each person.
 When app loads, display 12 rows.
 Names should be displayed in main label
 "{random number} years old" displayed in detail label
 */

import UIKit

class ViewController: UIViewController {
    
    var names = ["SpongeBob","Patrick","Mr.Krab","Sanndy","Gary","Mrs.Puff","Squidward","Pearl","Plankton","Larry","King Neptune","Karen"]
    var ages: [Int] = [Int.random(in: 5...95),
                       Int.random(in: 5...95),
                       Int.random(in: 5...95),
                       Int.random(in: 5...95),
                       Int.random(in: 5...95),
                       Int.random(in: 5...95),
                       Int.random(in: 5...95),
                       Int.random(in: 5...95),
                       Int.random(in: 5...95),
                       Int.random(in: 5...95),
                       Int.random(in: 5...95),
                       Int.random(in: 5...95)]

    @IBOutlet weak var AgeLabel: UILabel!
    @IBOutlet weak var Tabel: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Tabel.dataSource = self
    }


}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Tabel.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) //as ! CustomCell
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = "\(ages[indexPath.row]) years old"
        return cell
    }
    
}
