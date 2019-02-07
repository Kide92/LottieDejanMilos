//
//  ViewController.swift
//  LottieDejanMilos
//
//  Created by Dejan Matovic on 2/7/19.
//  Copyright © 2019 Dejan Matovic. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button = UIButton(frame: CGRect(x: 0, y: view.frame.height - 60, width: view.frame.width, height: 60))
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        //button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.blue
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        view.addSubview(button)
        
        
    }
    
    @objc func buttonPressed(){
        print("Pressed")
        
        let animationView = LOTAnimationView()
        animationView.setAnimation(named: "4127-surfing-poodle")
        
        //animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        animationView.frame.size.width = view.frame.width - 20
        animationView.frame.size.height = animationView.frame.width / 4 * 3
        
        animationView.center = view.center
        
        self.view.addSubview(animationView)
    
        animationView.play { (true) in
            
            let viewController = SecondViewController()
            self.present(viewController, animated: true, completion: nil)
        }
        
    }
    
    


}

