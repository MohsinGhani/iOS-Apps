//
//  secondViewController.swift
//  seguePractice
//
//  Created by Mohsin on 01/12/2017.
//  Copyright © 2017 Mohsin. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var label: UILabel!
    var commingText: String = "";
    var list = [String]();
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label?.text = self.commingText;
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        cell.textLabel?.text = self.list[indexPath.row]
        return cell;
    }

    @IBAction func gotoBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
