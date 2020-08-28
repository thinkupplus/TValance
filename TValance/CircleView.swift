//
//  CircleView.swift
//  TValance
//
//  Created by Yong ho Choi VM on 2020/08/27.
//  Copyright © 2020 Yong ho Choi VM. All rights reserved.
//

import UIKit

class CircleView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
//    let contextSize : CGSize = imgView.frame.size
//
//    let center = CGPoint(x: contextSize.width / 2, y: contextSize.height / 2)
//    let radius = (contextSize.width - 10) / 2
//
//    let context = UIGraphicsGetCurrentContext()!
//
//    context.setLineWidth(2.0)
//    context.setStrokeColor(UIColor.red.cgColor)
//
//    context.addArc(center: center, radius: radius, startAngle: 0.0, endAngle: .pi * 2.0, clockwise: true)
//    context.strokePath()
//
//    let middle = radius / 4
//    context.setLineWidth(2.0)
//    context.setStrokeColor(UIColor.red.cgColor)
//
//    context.addArc(center: center, radius: middle, startAngle: 0.0, endAngle: .pi * 2.0, clockwise: true)
//    context.strokePath()
//
//
//    context.setLineWidth(1.0)
//    context.setStrokeColor(UIColor.gray.cgColor)
//    context.move(to: CGPoint(x: center.x, y: 5))
//    context.addLine(to: CGPoint(x: center.x, y: contextSize.height - 5))
//    context.strokePath()
    
    
//           path.lineWidth = 2
    //        path.move(to: CGPoint(x: 25.0, y: 5.0))
    //        path.addLine(to: CGPoint(x: 175.0, y: 5.0))
    //        path.addArc(withCenter: CGPoint(x: 175.0, y: 25.0), radius: 20, startAngle: -.pi / 2, endAngle: .pi / 2, clockwise: true)
    //        path.addLine(to: CGPoint(x: 25.0, y: 45.0))
    //        path.addArc(withCenter: CGPoint(x: 25.0, y: 25.0), radius: 20, startAngle: .pi / 2, endAngle: -.pi / 2, clockwise: true)
    //        UIColor.systemRed.set()
    //        path.stroke()
    
    override func draw(_ rect: CGRect) {
//        let path = UIBezierPath()
//
        let contextSize : CGSize = rect.size

        let center = CGPoint(x: contextSize.width / 2, y: contextSize.height / 2)
        let radius = (contextSize.width - 10) / 2
//
//
//        path.lineWidth = 2
//        path.addArc(withCenter: center, radius: radius, startAngle: 0.0, endAngle: .pi * 2, clockwise: true)
//        path.move(to: center)
//        path.addArc(withCenter: center, radius: radius / 2, startAngle: 0.0, endAngle: .pi * 2, clockwise: true)
//        path.close()
//        UIColor.red.set()
//        path.stroke()
    
        let context = UIGraphicsGetCurrentContext()!
    
        context.setLineWidth(2.0)
        context.setStrokeColor(UIColor.red.cgColor)
    
        context.addArc(center: center, radius: radius, startAngle: 0.0, endAngle: .pi * 2.0, clockwise: true)
        context.strokePath()
    
        let middle :CGFloat = 10.0
        context.setLineWidth(2.0)
        context.setStrokeColor(UIColor.red.cgColor)
    
        context.addArc(center: center, radius: middle, startAngle: 0.0, endAngle: .pi * 2.0, clockwise: true)
        context.strokePath()
    
    
        context.setLineWidth(1.0)
        context.setStrokeColor(UIColor.gray.cgColor)
        context.move(to: CGPoint(x: center.x, y: 5))
        context.addLine(to: CGPoint(x: center.x, y: contextSize.height - 5))
        context.strokePath()
        
        context.setLineWidth(1.0)
        context.setStrokeColor(UIColor.gray.cgColor)
        context.move(to: CGPoint(x: 5, y: center.y))
        context.addLine(to: CGPoint(x: contextSize.width - 5, y: center.y))
        context.strokePath()
        
    }

}
