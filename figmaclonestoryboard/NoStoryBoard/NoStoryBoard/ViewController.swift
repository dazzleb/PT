//
//  ViewController.swift
//  NoStoryBoard
//
//  Created by 시혁 on 2023/02/09.
//

import UIKit
import SwiftUI
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.black
        //whkiteView
        let whiteView = UIView()
        whiteView.backgroundColor = UIColor.white
        //필수
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        //추가
        self.view.addSubview(whiteView)
        NSLayoutConstraint.activate([
            whiteView.widthAnchor.constraint(equalToConstant: 356),
            whiteView.heightAnchor.constraint(equalToConstant: 110),
            whiteView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            whiteView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        //imageView
        let imgView = UIImageView(image: UIImage(named: "8080"))
        imgView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgView.widthAnchor.constraint(equalToConstant: 80),
            imgView.heightAnchor.constraint(equalToConstant: 80),
    
            
        ])
        
        //totalStackView
        lazy var totalStackView = UIStackView()
        totalStackView.translatesAutoresizingMaskIntoConstraints = false
        totalStackView.addSubview(imgView)
        totalStackView.axis = .horizontal
        totalStackView.alignment = .fill
        totalStackView.distribution = .fill
        totalStackView.spacing = CGFloat(20)
        
    
        
        whiteView.addSubview(totalStackView)
    }
    
    
#if DEBUG

    struct ViewControllerPresentable: UIViewControllerRepresentable {
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        }
        func makeUIViewController(context: Context) -> some UIViewController {
            ViewController()
        }
    }
    
    struct ViewControllerPrepresentable_PreviewProvider : PreviewProvider {
        static var previews: some View {
            ViewControllerPresentable()
                .ignoresSafeArea()
        }
    }
    
#endif
}

