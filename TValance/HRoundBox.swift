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
        
        print("HRoundBox = width : \(rect.width), height : \(rect.height)")
        
        
        let lefttopx : CGFloat = rect.height / 2            // 좌측 상단, x축
        let lefttopy : CGFloat = 5.0                        // 좌측 상단, y축
        
        let toplinex : CGFloat = rect.width - (rect.height / 2)
        let topliney : CGFloat = 5.0
        
        let rightArcx : CGFloat = toplinex
        let rightArcy : CGFloat = rect.height / 2
        
        let bottomlinex : CGFloat = lefttopx
        let bottomliney : CGFloat = 45.0
        
        let leftArcx : CGFloat = rect.height / 2
        let leftArcy : CGFloat = leftArcx
        
        path.lineWidth = 2
        path.move(to: CGPoint(x: lefttopx, y: lefttopy))
        path.addLine(to: CGPoint(x: toplinex, y: topliney))
        path.addArc(withCenter: CGPoint(x: rightArcx, y: rightArcy), radius: 20, startAngle: -.pi / 2, endAngle: .pi / 2, clockwise: true)
        path.addLine(to: CGPoint(x: bottomlinex, y: bottomliney))
        path.addArc(withCenter: CGPoint(x: leftArcx, y: leftArcy), radius: 20, startAngle: .pi / 2, endAngle: -.pi / 2, clockwise: true)
        UIColor.systemRed.set()
        
        path.stroke()
        
        
        let centerline = UIBezierPath()
        
        let leftcenterx : CGFloat = (rect.width / 2) + 10
        let leftcentery : CGFloat = 5.0
        
        let leftcenterlinex : CGFloat = leftcenterx
        let leftcenterliney : CGFloat = 45.0
        
        let rightcenterx : CGFloat = (rect.width / 2) - 10
        let rightcentery : CGFloat = 5.0
        
        let rightcenterlinex : CGFloat = rightcenterx
        let rightcenterliney : CGFloat = 45.0
        
        
        
        centerline.move(to: CGPoint(x: leftcenterx, y: leftcentery))
        centerline.addLine(to: CGPoint(x: leftcenterlinex, y: leftcenterliney))
        
        centerline.move(to: CGPoint(x: rightcenterx, y: rightcentery))
        centerline.addLine(to: CGPoint(x: rightcenterlinex, y: rightcenterliney))
        
        UIColor.systemGray.set()
        
        centerline.stroke()
        
        
    }
}
