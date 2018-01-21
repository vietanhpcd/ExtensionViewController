//
//  ViewController.swift
//  ExtensionViewController
//
//  Created by vietanh on 1/18/18.
//  Copyright © 2018 vietanh. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go" {
            if let viewControllerTwo = segue.destination.contents as? ViewControllerTwo {
            viewControllerTwo.mediateText = textField.text 
            }
        }
    }
}
extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
                       //.topViewController
        } else {
            return self
        }
    }
}


