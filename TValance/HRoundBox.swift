//
//  RoundBox.swift
//  TValance
//
//  Created by Yong ho Choi VM on 2020/08/27.
//  Copyright © 2020 Yong ho Choi VM. All rights reserved.
//

import UIKit

class HRoundBox: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        
//        print("width : \(roundWidth), height : \(roundHeight)")
        
        path.lineWidth = 2
        path.move(to: CGPoint(x: 25.0, y: 5.0))
        path.addLine(to: CGPoint(x: 175.0, y: 5.0))
        path.addArc(withCenter: CGPoint(x: 175.0, y: 25.0), radius: 20, startAngle: -.pi / 2, endAngle: .pi / 2, clockwise: true)
        path.addLine(to: CGPoint(x: 25.0, y: 45.0))
        path.addArc(withCenter: CGPoint(x: 25.0, y: 25.0), radius: 20, startAngle: .pi / 2, endAngle: -.pi / 2, clockwise: true)
        UIColor.systemRed.set()
        
        path.stroke()
        
        
        let centerline = UIBezierPath()
        
        centerline.move(to: CGPoint(x: 110, y: 5.0))
        centerline.addLine(to: CGPoint(x: 110, y: 45.0))
        
        centerline.move(to: CGPoint(x: 90, y: 5.0))
        centerline.addLine(to: CGPoint(x: 90, y: 45.0))
        
        UIColor.systemGray.set()
        
        centerline.stroke()
        
        
    }
}
