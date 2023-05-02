//
//  CustomDuoButton.swift
//  AnimationButton
//
//  Created by Kuziboev Siddikjon on 01/05/23.
//

import UIKit
import AVFoundation

final class DuoButton: UIButton {
    
    var audioPlayer: AVAudioPlayer?

    override var isHighlighted: Bool {
        didSet {
            updateAppearanceForHighlightedState()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        setTitleColor(.white, for: .normal)
        backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        layer.cornerRadius = 10
        layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        layer.borderWidth = 2
        layer.masksToBounds = true
        
        setupAudioPlayer()
    }
    
    private func updateAppearanceForHighlightedState() {
        if isHighlighted {
            transform = CGAffineTransform(translationX: 0, y: 2)
        } else {
            transform = .identity
        }
    }
    

 
}

extension DuoButton {
    
    func setupAudioPlayer() {
        guard let soundFileURL = Bundle.main.url(forResource: "click", withExtension: "mp3") else {
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundFileURL)
            audioPlayer?.prepareToPlay()
        } catch {
            print("Error loading sound file: \(error.localizedDescription)")
        }
    }
    
    //Action
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           super.touchesBegan(touches, with: event)
           audioPlayer?.play()
       }

}

