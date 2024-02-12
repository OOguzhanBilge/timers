//
//  ViewController2.swift
//  timers
//
//  Created by Oğuzhan Bilge on 12.02.2024.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var countdownLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    var timer: Timer?
    var counter = 16
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        super.viewDidLoad()
        countdownLabel.text = "\(counter)"
        startButton.isEnabled = true // Başlangıçta buton etkin
    }
    @IBAction func startCountdown(_ sender: UIButton) {
           startButton.isEnabled = false // Buton tıklandığında etkisiz hale getir
           startTimer()
       }
       
       func startTimer() {
           timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCountdown), userInfo: nil, repeats: true)
       }
       
       @objc func updateCountdown() {
           if counter > 0 {
               countdownLabel.text = "\(counter)"
               counter -= 1
           } else {
               timer?.invalidate()
               startButton.isEnabled = true // Zamanlayıcı bittiğinde buton yeniden etkinleştir
           }
       }

    
}
