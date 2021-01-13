//
//  ViewController.swift
//  inout2
//
//  Created by shiau on 2021/1/12.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var sayTextField: UITextField!
    @IBOutlet weak var gbmanImageView: UIImageView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func speak(_ sender: Any) {
        
        let speechUtterance  = AVSpeechUtterance(string: sayTextField.text!)
        
        //let speechUtterance  = AVSpeechUtterance(string:" Let Go 如果我能夠放下 Let Go 今天就先這樣吧 Let Go 往你的方向 逃跑 換我給你肩膀")
        //speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        
        let synthesiter = AVSpeechSynthesizer()
        synthesiter.speak(speechUtterance)
    }
   
    @IBAction func changecolor(_ sender: Any) {
        gbmanImageView.backgroundColor = UIColor( red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value),  blue: CGFloat(blueSlider.value), alpha: 1)

    }
    
}

