//
//  ViewController.swift
//  Retsuko
//
//  Created by shiau on 2021/1/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var head: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func face(_ sender: UIButton) {
        let image = sender.currentImage
        head.image = image
    }
    
    
    
}

