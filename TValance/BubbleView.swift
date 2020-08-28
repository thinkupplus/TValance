//
//  BubbleView.swift
//  TValance
//
//  Created by Yong ho Choi VM on 2020/08/27.
//  Copyright © 2020 Yong ho Choi VM. All rights reserved.
//

import UIKit

class BubbleView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        
        context.setLineWidth(2.0)
        context.setStrokeColor(UIColor.red.cgColor)
        context.setFillColor(UIColor.red.cgColor)
    
        context.addArc(center: CGPoint(x: rect.width / 2, y: rect.height / 2	), radius: 10, startAngle: 0.0, endAngle: .pi * 2.0, clockwise: true)
//        context.strokePath()
        context.fillPath()
    }
}
