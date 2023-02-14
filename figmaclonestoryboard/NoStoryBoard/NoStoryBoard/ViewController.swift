//
//  ViewController.swift
//  NoStoryBoard
//
//  Created by 시혁 on 2023/02/09.
//

import UIKit
import SwiftUI
class ViewController: UIViewController {
    
    lazy var subView : UIView =  {
        let subView = UIView()
        subView.backgroundColor = .white
        subView.layer.cornerRadius = CGFloat(14)
        subView.translatesAutoresizingMaskIntoConstraints  = false
        return subView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.black
        self.view.translatesAutoresizingMaskIntoConstraints = false
        
        let titleLabel = titleLabel()
        let contentLabel = contentLabel()
        
        let boxStackView = boxStackView()
        
        let hearContainer = heartContainer()
        let heartLabel = heartLabel()
        let numberLabel = numberLabel()
        
        let talkContainer = talkContainer()
        let talkLabel = talkLabel()
        let numberlabel2 = numberLabel2()
        
        //추가 : addSubView 에 위치 중요 !
        self.view.addSubview(subView)
        subView.addSubview(titleLabel)
        subView.addSubview(contentLabel)//✅
        
        subView.addSubview(boxStackView)//✅
        boxStackView.addSubview(hearContainer)
        boxStackView.addSubview(talkContainer)
        
        
        
        
        hearContainer.addSubview(heartLabel)
        hearContainer.addSubview(numberLabel)

        talkContainer.addSubview(talkLabel)
        talkContainer.addSubview(numberlabel2)
        
        //위치
        NSLayoutConstraint.activate([
            subView.widthAnchor.constraint(equalToConstant: 353),
            subView.heightAnchor.constraint(equalToConstant: 164),
            subView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            subView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            titleLabel.widthAnchor.constraint(equalToConstant: 29.5),
            titleLabel.heightAnchor.constraint(equalToConstant: 29),
            titleLabel.topAnchor.constraint(equalTo: self.subView.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: self.subView.leadingAnchor, constant: 16),
            titleLabel.bottomAnchor.constraint(equalTo: contentLabel.topAnchor, constant: 9),
            
            contentLabel.widthAnchor.constraint(equalToConstant: 311),
            contentLabel.heightAnchor.constraint(equalToConstant: 48),
            contentLabel.leadingAnchor.constraint(equalTo: self.subView.leadingAnchor, constant: 16),
            
            
            
            //box
            boxStackView.leadingAnchor.constraint(equalTo: self.subView.leadingAnchor, constant: 16),
            boxStackView.topAnchor.constraint(equalTo: contentLabel.bottomAnchor, constant: 40),
            
            //heart
            hearContainer.widthAnchor.constraint(equalToConstant: 47.5),
            hearContainer.leadingAnchor.constraint(equalTo: boxStackView.leadingAnchor, constant: 0),
            hearContainer.topAnchor.constraint(equalTo: boxStackView.topAnchor, constant: 0),
            
            
            heartLabel.widthAnchor.constraint(equalToConstant: 23),
            heartLabel.heightAnchor.constraint(equalToConstant: 20.5),
            
            numberLabel.leadingAnchor.constraint(equalTo: hearContainer.leadingAnchor, constant: 30),
            numberLabel.topAnchor.constraint(equalTo: boxStackView.topAnchor, constant: 0),
            numberLabel.widthAnchor.constraint(equalToConstant: 23),
            numberLabel.heightAnchor.constraint(equalToConstant: 20.5),
            
            
            
            
            //talk
            talkContainer.widthAnchor.constraint(equalToConstant: 47.5),
            talkContainer.leadingAnchor.constraint(equalTo: hearContainer.leadingAnchor, constant: 0),
            
            talkLabel.widthAnchor.constraint(equalToConstant: 23),
            talkLabel.heightAnchor.constraint(equalToConstant: 20.5),
            talkLabel.leadingAnchor.constraint(equalTo: talkContainer.leadingAnchor, constant: 50),
            
            talkLabel.leadingAnchor.constraint(equalTo: numberLabel.leadingAnchor, constant: 50),
            
            talkLabel.topAnchor.constraint(equalTo: talkContainer.topAnchor, constant: 0),
            
            numberlabel2.widthAnchor.constraint(equalToConstant: 23),
            numberlabel2.heightAnchor.constraint(equalToConstant: 20.5),
            numberlabel2.leadingAnchor.constraint(equalTo: talkLabel.leadingAnchor, constant: 30),
            numberlabel2.topAnchor.constraint(equalTo: talkContainer.topAnchor, constant: 0)
            
            
//
//            //heart
//            heartLabel.leadingAnchor.constraint(equalTo: hearStackView.leadingAnchor, constant: 0),
//            heartLabel.topAnchor.constraint(equalTo: hearStackView.topAnchor, constant: 0),
//
//            numberLabel.leadingAnchor.constraint(equalTo: heartLabel.leadingAnchor, constant: 30),
//            numberLabel.topAnchor.constraint(equalTo: hearStackView.topAnchor,constant: 0),
//
//            //옆
//            hearStackView.trailingAnchor.constraint(equalTo: talkStackView.trailingAnchor,constant: 50),
//
//            //talk
//
//            talkLabel.leadingAnchor.constraint(equalTo: talkStackView.leadingAnchor, constant: 0),
//            talkLabel.topAnchor.constraint(equalTo: talkStackView.topAnchor, constant: 0),
//
//            numberlabel2.leadingAnchor.constraint(equalTo: talkLabel.leadingAnchor, constant: 30),
//            numberlabel2.topAnchor.constraint(equalTo: hearStackView.topAnchor,constant: 0)
            
        ])
        
    }
    
}
extension ViewController {
    
    ///  하트랑 댓글 다 모은 스택뷰
    /// - Returns: <#description#>
    fileprivate func boxStackView() ->UIStackView {
        let boxStackView = UIStackView()
        boxStackView.axis = .horizontal
        boxStackView.spacing = CGFloat(13.5)
        boxStackView.alignment = .fill
        boxStackView.distribution = .fill
        boxStackView.translatesAutoresizingMaskIntoConstraints = false
        return boxStackView
    }
    
    fileprivate func heartContainer() ->UIView {
        let heartContainer = UIView()
        heartContainer.translatesAutoresizingMaskIntoConstraints = false
        return heartContainer
    }
    fileprivate func talkContainer() ->UIView {
        let talkContainer = UIView()
//        talkStackView.axis = .horizontal
//        talkStackView.spacing = CGFloat(6.5)
//        talkStackView.alignment = .fill
//        talkStackView.distribution = .fill
        talkContainer.translatesAutoresizingMaskIntoConstraints = false
        return talkContainer
    }
    ///MAKR: - 타이틀 과 내용
    fileprivate func titleLabel() -> UILabel {
        let titleLabel = UILabel()
        titleLabel.text = "문의"
        titleLabel.numberOfLines = 0
        titleLabel.font = .systemFont(ofSize: 17)
        titleLabel.textColor = UIColor(named: "gr")
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }
    fileprivate func contentLabel() -> UILabel {
        let contentLabel = UILabel()
        contentLabel.text = "실크벽지 폭이 110 이면 일반인가요? 아니면 광폭 인가요?"
        contentLabel.numberOfLines = 0
        contentLabel.font = .systemFont(ofSize: 17)
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        return contentLabel
    }
    
    ///MARK: - 댓글 피드백 박스
    fileprivate func heartLabel() -> UILabel {
        let hearLabel = UILabel()
        hearLabel.text = "❤️"
        hearLabel.font = .systemFont(ofSize: 17)
        hearLabel.translatesAutoresizingMaskIntoConstraints = false
        return hearLabel
    }
    fileprivate func numberLabel() -> UILabel {
        let numberLabel = UILabel()
        numberLabel.text = "14"
        numberLabel.font = .systemFont(ofSize: 17)
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        return numberLabel
    }
    
    fileprivate func talkLabel() -> UILabel {
        let talkLabel = UILabel()
        talkLabel.text = "💬"
        talkLabel.font = .systemFont(ofSize: 17)
        talkLabel.translatesAutoresizingMaskIntoConstraints = false
        return talkLabel
    }
    fileprivate func numberLabel2() -> UILabel {
        let numberLabel2 = UILabel()
        numberLabel2.text = "1k"
        numberLabel2.font = .systemFont(ofSize: 17)
        numberLabel2.translatesAutoresizingMaskIntoConstraints = false
        return numberLabel2
    }
    
    
    
    
    
}

