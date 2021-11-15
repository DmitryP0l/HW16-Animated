//
//  ViewController.swift
//  HW16-Animated
//
//  Created by lion on 14.11.21.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet private weak var myView: UIView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.myView.frame = CGRect(x: Int.random(in: 1..<250), y: Int.random(in: 1..<400), width: 100, height: 100)
        self.myView.backgroundColor = .random
        self.myView.layer.cornerRadius = 50
        
    }

    
    
    
    @IBAction func startButton(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
            self.myView.frame = CGRect(x:(Int(self.view.frame.size.width) - 100)/2, y: Int(self.view.frame.size.height) - 200, width: 100, height: 100)
            self.view.layoutSubviews()
            
        }, completion: {_ in
            UIView.animate(withDuration: 0.5, animations: {
                self.myView.backgroundColor = .random
            })
        })
                       
}
                       
    @IBAction func actionButton(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
            self.myView.frame = CGRect(x: Int.random(in: 1..<250), y: Int.random(in: 1..<400), width: 100, height: 100)
            //self.myView.center = self.view.center
            
        })
    }


}

extension UIColor {
    static var random: UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0
        )
    }
}
