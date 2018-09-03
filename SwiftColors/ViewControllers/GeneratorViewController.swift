//
//  ViewController.swift
//  SwiftColors
//
//  Created by Patryk Uran on 02/09/2018.
//  Copyright © 2018 Patryk Uran. All rights reserved.
//

import UIKit

class GeneratorViewController: UIViewController {

    @IBOutlet var previewContainer: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionRandomColor(_ sender: Any) {
        randomColor()
    }

    @IBAction func actionColorChanged(_ sender: UISlider) {
        previewContainer.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    func randomColor() {
        
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        UIColor.randomColor().getRed(&r, green: &g, blue: &b, alpha: &a)
        
        redSlider.value = Float(r)
        greenSlider.value = Float(g)
        blueSlider.value = Float(b)
        
        previewContainer.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: a)
    }
}

