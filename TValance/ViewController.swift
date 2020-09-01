//
//  ViewController.swift
//  TValance
//
//  Created by Yong ho Choi VM on 2020/08/25.
//  Copyright © 2020 Yong ho Choi VM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var horView: UIImageView!
    @IBOutlet weak var verView: UIImageView!
    
    private var bubble : BubbleView!
    
    private var hBubble : BubbleView!
    private var vBubble : BubbleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        imgView.backgroundColor = UIColor.gray
//        horView.backgroundColor = UIColor.gray
//        verView.backgroundColor = UIColor.gray
        
        initCircle1()
        inithorView()
        initverView()
        
        initbubble()
    }
    
    func initbubble() {
//        bubble = BubbleView(frame: imgView.frame)
//
//        bubble.backgroundColor = .clear
//        self.view.addSubview(bubble)
//
        hBubble = BubbleView(frame: horView.frame)
        hBubble.backgroundColor = .clear
//        horView.addSubview(hBubble)
        self.view.addSubview(hBubble)
//
        vBubble = BubbleView(frame: verView.frame)
        vBubble.backgroundColor = .clear
        self.view.addSubview(vBubble)
    }
    
    func initCircle() {
        UIGraphicsBeginImageContext(imgView.frame.size)
        
        let contextSize : CGSize = imgView.frame.size
        
        let center = CGPoint(x: contextSize.width / 2, y: contextSize.height / 2)
        let radius = (contextSize.width - 10) / 2
        
        let context = UIGraphicsGetCurrentContext()!
        
        context.setLineWidth(2.0)
        context.setStrokeColor(UIColor.red.cgColor)
        
        context.addArc(center: center, radius: radius, startAngle: 0.0, endAngle: .pi * 2.0, clockwise: true)
        context.strokePath()
        
        let middle = radius / 4
        context.setLineWidth(2.0)
        context.setStrokeColor(UIColor.red.cgColor)
        
        context.addArc(center: center, radius: middle, startAngle: 0.0, endAngle: .pi * 2.0, clockwise: true)
        context.strokePath()
        
        
        context.setLineWidth(1.0)
        context.setStrokeColor(UIColor.gray.cgColor)
        context.move(to: CGPoint(x: center.x, y: 5))
        context.addLine(to: CGPoint(x: center.x, y: contextSize.height - 5))
        context.strokePath()
        
        imgView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
    
    func initCircle1() {
        let circleView = CircleView(frame: imgView.frame)
        circleView.backgroundColor = .clear
        self.view.addSubview(circleView)
    }
    
    func inithorView() {
        let roundBoxView = HRoundBox(frame: horView.frame)
        
//        horView.addSubview(roundBoxView)
        roundBoxView.backgroundColor = .clear
        self.view.addSubview(roundBoxView)
    }
    
    func initverView() {
        let roundBoxView = VRoundBox(frame: verView.frame)
                
//        horView.addSubview(roundBoxView)
        roundBoxView.backgroundColor = .clear
        self.view.addSubview(roundBoxView)
    }
    
    
    @IBAction func btn_Right_T(_ sender: UIButton) {
        let horRoundBox = horView.frame.size
        //        let verRoundBox = verView.frame.size
        //        let horPostion = horView.frame
        //
        //        print("X: \(horPostion.origin.x), Y:\(horPostion.origin.y)")
        //        print("width: \(horPostion.size.width) height: \(horPostion.size.height)")
                
        //        let hbubbleX = horPostion.origin.x
        //        let hbubbleY = horPostion.origin.y
                
        let horRoundBboxWidth = ((horRoundBox.width / 2) - 15)
        
        let transx1 : CGFloat = horRoundBboxWidth * -1.0
        let transx2 : CGFloat = horRoundBboxWidth * 1.0
        print("width: \(horRoundBox.width) height: \(horRoundBox.height)")
        print("transx1: \(transx1) transx2: \(transx2)")
        
        let move = CGAffineTransform(translationX: transx2, y: 0)

        self.hBubble.transform = move

//        UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
//        //             self.hBubble.frame.origin.x = 20
//        //                self.hBubble.bounds.origin.y = 5
//        //                self.hBubble.bounds = CGRect(x: 10, y: 5, width: 20, height: 20)
//                        let move = CGAffineTransform(translationX: transx2, y: 0)
//
//                        self.hBubble.transform = move
//                    }, completion: nil)
    }
    @IBAction func btn_TouchUP_circle(_ sender: UIButton) {
        
        print("Touch")
        // 각각의 이미지 사이즈를 계산해서 넘어가지 않도록 해야 한다.
        
//        let circleSize = imgView.frame.size
        let horRoundBox = horView.frame.size
//        let verRoundBox = verView.frame.size
//        let horPostion = horView.frame
//
//        print("X: \(horPostion.origin.x), Y:\(horPostion.origin.y)")
//        print("width: \(horPostion.size.width) height: \(horPostion.size.height)")
        
//        let hbubbleX = horPostion.origin.x
//        let hbubbleY = horPostion.origin.y
        
        let horRoundBboxWidth = ((horRoundBox.width / 2) - 20)
        
        let transx1 : CGFloat = horRoundBboxWidth * -1.0
        let transx2 : CGFloat = horRoundBboxWidth * 1.0
        print("width: \(horRoundBox.width) height: \(horRoundBox.height)")
        print("transx1: \(transx1) transx2: \(transx2)")
        
        let move = CGAffineTransform(translationX: transx1, y: 0)
        
        self.hBubble.transform = move
        
//        UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
//
//            let move = CGAffineTransform(translationX: transx1, y: 0)
//
//            self.hBubble.transform = move
//
////            self.hBubble.frame.origin.x = hbubbleX + 73
////            self.hBubble.frame.origin.y = hbubbleY
////            self.hBubble.bounds = CGRect(x: 120, y: 5, width: 20, height: 20)
//        }, completion: nil)
        
        
//        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
//            self.bubble.frame.origin.x = 120
//            self.bubble.frame.origin.y = 120
//        }, completion: { _ in
//            UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
//                self.bubble.frame.origin.x = 200
//                self.bubble.frame.origin.y = 300
//            }, completion: nil)
//        })
    }
}

