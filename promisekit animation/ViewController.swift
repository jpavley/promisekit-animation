//
//  ViewController.swift
//  promisekit animation
//
//  Created by John Pavley on 11/17/17.
//  Copyright © 2017 John Pavley. All rights reserved.
//

import UIKit
import PromiseKit

class ViewController: UIViewController {
    
    let firstTag = 100
    let cellCount = 9

    var cellList = [UIView]()
    
    @IBOutlet weak var cell: UIView!
    
    @IBAction func animateAction(_ sender: Any) {
        let fade = Promise()
        for cell in tableView.visibleCells {
            fade = fade.then {
                UIView.promise(animateWithDuration:0.1) {
                    cell.alpha = 0
                }
            }
        }
        fade.then {
            //finish
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for i in firstTag...firstTag+cellCount {
            cellList.append(tag)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

