//
//  ViewController.swift
//  WUImageScaler
//
//  Created by Corban Swain on 1/22/17.
//  Copyright © 2017 CorbanSwain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let sliderValue = sender.value
        image.alpha = CGFloat(sliderValue)
        label.text = "\(String(Int(sliderValue*100)))%"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

