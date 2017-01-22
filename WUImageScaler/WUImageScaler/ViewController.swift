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
    @IBOutlet weak var headerMessage: UILabel!
    
    enum HeaderText: String {
        case bye = "Bye Bye!"
        case hello2 = "Hello, again!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let sliderValue = sender.value
        let currentHeader = headerMessage.text
        
        image.alpha = CGFloat(sliderValue)
        label.text = "\(String(Int(sliderValue*100)))%"
        
        if let text = currentHeader {
            if sliderValue == 0 &&
                text != HeaderText.bye.rawValue {
            
                headerMessage.text = HeaderText.bye.rawValue
            }
            else if text == HeaderText.bye.rawValue &&
                sliderValue != 0 {
                
                headerMessage.text = HeaderText.hello2.rawValue
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

