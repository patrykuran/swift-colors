//
//  ViewController.swift
//  SwiftColors
//
//  Created by Patryk Uran on 02/09/2018.
//  Copyright © 2018 Patryk Uran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var previewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        previewContainer.backgroundColor = UIColor.randomColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionRandomColor(_ sender: Any) {
        previewContainer.backgroundColor = UIColor.randomColor()
    }

}

