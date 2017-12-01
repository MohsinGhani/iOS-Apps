//
//  ViewController.swift
//  seguePractice
//
//  Created by Mohsin on 01/12/2017.
//  Copyright © 2017 Mohsin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gotoSecond(_ sender: UIButton) {
        performSegue(withIdentifier: "show", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! secondViewController;
        destinationViewController.list.append(self.text.text!);
    }

}

