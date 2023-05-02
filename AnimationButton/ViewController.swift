//
//  ViewController.swift
//  AnimationButton
//
//  Created by Kuziboev Siddikjon on 01/05/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var customButton: DuoButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let customView = CustomMainButton()
        view.addSubview(customView)
        customView.title = "New Button"
        customView.layer.cornerRadius = 10
        customView.button.layer.cornerRadius = 10
        
        NSLayoutConstraint.activate([
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            customView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            customView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            customView.heightAnchor.constraint(equalToConstant: 50),
        ])

//        customView.addTarget(self, action: #selector(volumeButtonTapped), for: .touchUpInside)

    }
    
    @objc func volumeButtonTapped() {
        // adjust the volume level here
        print("Volume button tapped!")
    }


}

