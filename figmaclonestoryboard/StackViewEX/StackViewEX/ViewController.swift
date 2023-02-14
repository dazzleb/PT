//
//  ViewController.swift
//  StackViewEX
//
//  Created by 시혁 on 2023/02/11.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var mainView : UIView = {
        let mainView = UIView()
        mainView.backgroundColor = .white
        mainView.translatesAutoresizingMaskIntoConstraints = false
        return mainView
    }()
    lazy var topStackView : UIStackView = {
        let topStackView = UIStackView()
        topStackView.axis = .vertical
        topStackView.alignment = .fill
        topStackView.distribution = .fill
        topStackView.spacing = 16
        
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        return topStackView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .brown
        
        let titleLabel = UILabel()
        titleLabel.text = "어떤 힐링이 필요하세요?"
        titleLabel.font = .systemFont(ofSize: 17, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // ADD
        self.view.addSubview(mainView)
        mainView.addSubview(titleLabel)
        mainView.addSubview(topStackView)
     
        topStackView.addArrangedSubview(middleStackView())
        topStackView.addArrangedSubview(middleStackView())
        topStackView.addArrangedSubview(middleStackView())
        
        self.view.addSubview(cardView())
        
        //위치
          NSLayoutConstraint.activate([
            mainView.widthAnchor.constraint(equalToConstant: 430),
            mainView.heightAnchor.constraint(equalToConstant: 450),
            mainView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            mainView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0)
          ])
        //titlelabel 위치
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 51),
            titleLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 115)
        ])
        //topStackView 위치
        NSLayoutConstraint.activate([
            topStackView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 44),
            topStackView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -10)
        ])
        //bottomStackView
        
    }
}
extension ViewController {
    fileprivate func middleStackView() -> UIStackView {
        let middleStackView = UIStackView()
        middleStackView.axis = .horizontal
        middleStackView.alignment = .fill
        middleStackView.distribution = .fill
        middleStackView.spacing = 8
        
        middleStackView.translatesAutoresizingMaskIntoConstraints = false
        
        middleStackView.addArrangedSubview(smallStackView())
        middleStackView.addArrangedSubview(smallStackView())
        middleStackView.addArrangedSubview(smallStackView())
        middleStackView.addArrangedSubview(smallStackView())
        
        
        return middleStackView
    }
    
    fileprivate func smallStackView() -> UIStackView {
        let smallStackView = UIStackView()
        smallStackView.axis = .vertical
        smallStackView.alignment = .fill
        smallStackView.distribution = .fill
        smallStackView.spacing = 8
        smallStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let imgContent = UIImageView(image: UIImage(named: "1"))
        imgContent.contentMode = .scaleAspectFit
        imgContent.translatesAutoresizingMaskIntoConstraints = false
        
        let textContent = UILabel()
        textContent.text = "우울"
        textContent.textAlignment = .center
        textContent.font = .systemFont(ofSize: 17, weight: .bold)
        textContent.translatesAutoresizingMaskIntoConstraints = false
        //ADD
        smallStackView.addArrangedSubview(imgContent)
        smallStackView.addArrangedSubview(textContent)
        //position
        NSLayoutConstraint.activate([
            imgContent.widthAnchor.constraint(equalToConstant: 70),
            imgContent.heightAnchor.constraint(equalToConstant: 70)
        ])
        return smallStackView
    }
    
    fileprivate func cardView() -> UIView {
        let cardView = UIView()
        cardView.backgroundColor = .white
        cardView.translatesAutoresizingMaskIntoConstraints = false
        
        let soundTerapiLabel = UILabel()
        soundTerapiLabel.text = "사운드\n테라피"
        soundTerapiLabel.font = .systemFont(ofSize: 17, weight: .bold)
        soundTerapiLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        cardView.addSubview(soundTerapiLabel)
        
        
        NSLayoutConstraint.activate([
            cardView.widthAnchor.constraint(equalToConstant: 120),
            cardView.heightAnchor.constraint(equalToConstant: 225),
            cardView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            cardView.topAnchor.constraint(equalTo: mainView.bottomAnchor, constant:20 )
            
            
        ])
        
        return cardView
    }
    
    
}

