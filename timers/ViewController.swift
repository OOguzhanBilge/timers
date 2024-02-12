//
//  ViewController.swift
//  timers
//
//  Created by Oğuzhan Bilge on 12.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblCountdown: UILabel!
    
    var timer = Timer()
    var kalanZaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        kalanZaman = 15
        
        lblCountdown.text = "Contdown: \(kalanZaman)"
        
        }
        

    @IBAction func txtBtn(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFonksiyonu(){
        lblCountdown.text = "Countdown: \(kalanZaman)"
        
        kalanZaman = kalanZaman - 1
        
        if kalanZaman == 0 {
            lblCountdown.text = "Süre Bitti"
            timer.invalidate()
            kalanZaman = 15
        }
    }
    
}

