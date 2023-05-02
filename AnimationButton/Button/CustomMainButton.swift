//
//  CustomMainButton.swift
//  AnimationButton
//
//  Created by Kuziboev Siddikjon on 02/05/23.
//

import UIKit

@IBDesignable class CustomMainButton: UIView {
    
    var button: DuoButton = DuoButton()

    var title: String? {
        get {
            return button.titleLabel?.text
        }
        set(newValue) {
            button.setTitle(newValue, for: .normal)
        }
    }
    
    
    @IBInspectable
    var radius: CGFloat = 5 {
        didSet {
            button.layer.cornerRadius = radius
            layer.cornerRadius = radius
        }
    }
    
    @IBInspectable
    var image: UIImage = UIImage(systemName: "airtag")! {
        didSet {
            button.setImage(image, for: .normal)
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

      override func awakeFromNib() {
          super.awakeFromNib()
          setupButton()
      }

      private func setupButton() {
          // customize your button here
          backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
          
          translatesAutoresizingMaskIntoConstraints = false
          
          button.layer.borderWidth = 2
          button.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
          button.translatesAutoresizingMaskIntoConstraints = false
          addSubview(button)
          
          NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: topAnchor, constant: -2),
            button.leftAnchor.constraint(equalTo: leftAnchor),
            button.rightAnchor.constraint(equalTo: rightAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2)
          ])
      }
}
