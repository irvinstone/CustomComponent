//
//  CustomButton.swift
//  CustomButton
//
//  Created by Irvin Leon on 8/5/19.
//  Copyright © 2019 Vagasoft. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedConfiguration()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedConfiguration()
    }
    
    private func sharedConfiguration() {
        titleLabel?.font = titleLabel?.font.withSize(20)
        self.setTitle("DefaultText", for: .normal)
        self.cornerRadius = 16
        self.borderWidth = 7
        self.borderColor = .yellow
    }
    
    @IBInspectable
    public var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    public var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    public var borderColor: UIColor? = nil {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable
    var shadowColor: CGColor? {
        didSet {
            self.layer.shadowColor = shadowColor
        }
    }
    
    @IBInspectable
    var buttonText: String? {
        didSet {
            self.setTitle(buttonText, for: .normal)
        }
    }
    
}
