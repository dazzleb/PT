//
//  ViewController.swift
//  trostAuto
//
//  Created by 시혁 on 2023/02/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .gray
        let top = UIView()
        top.backgroundColor = .white
        top.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(top)
        let totalStackVIew = ToalStackView()
        top.addSubview(totalStackVIew)
        
        NSLayoutConstraint.activate([
            top.heightAnchor.constraint(equalToConstant: 460),
            top.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            top.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 5),
            top.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)

        ])
        NSLayoutConstraint.activate([
            totalStackVIew.topAnchor.constraint(equalTo: top.topAnchor, constant: 8),
            totalStackVIew.centerXAnchor.constraint(equalTo: top.centerXAnchor)
        ])

    }
}
extension ViewController {
    
    fileprivate func ToalStackView() -> UIStackView {
        let toalStackView = UIStackView()
        toalStackView.axis = .vertical
        toalStackView.alignment = .center
        toalStackView.distribution = .fill
        toalStackView.spacing = 24
        toalStackView.translatesAutoresizingMaskIntoConstraints = false
        toalStackView.addArrangedSubview(HeallingLabel())
        toalStackView.addArrangedSubview(TopStackView())

        
        return toalStackView
    }
    
    fileprivate func HeallingLabel() -> UILabel {
        let heallingLabel = UILabel()
        heallingLabel.text = "어떤 힐링이 필요하세요?"
        heallingLabel.font = .systemFont(ofSize: 28, weight: .bold)
        heallingLabel.translatesAutoresizingMaskIntoConstraints = false
        return heallingLabel
    }
    
    fileprivate func TopStackView() -> UIStackView {
        let topStackView = UIStackView()
        topStackView.axis = .vertical
        topStackView.alignment = .fill
        topStackView.distribution = .fill
        topStackView.spacing = 27
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        
        topStackView.addArrangedSubview(MiddleStackView())
        topStackView.addArrangedSubview(MiddleStackView())
        topStackView.addArrangedSubview(MiddleStackView())
        topStackView.addArrangedSubview(MiddleStackView())
        
        return topStackView
    }
    
    fileprivate func MiddleStackView() -> UIStackView {
        let middleStackView = UIStackView()
        middleStackView.axis = .horizontal
        middleStackView.alignment = .fill
        middleStackView.distribution = .fill
        middleStackView.spacing = 40
        middleStackView.translatesAutoresizingMaskIntoConstraints = false
        
        middleStackView.addArrangedSubview(SmallStackView())
        middleStackView.addArrangedSubview(SmallStackView())
        middleStackView.addArrangedSubview(SmallStackView())
        middleStackView.addArrangedSubview(SmallStackView())
        
        return middleStackView
    }
    
    
    fileprivate func SmallStackView() -> UIStackView {
        let smallStackView = UIStackView()
        smallStackView.axis = .vertical
        smallStackView.alignment = .center
        smallStackView.distribution = .fill
        smallStackView.spacing = 8
        smallStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let imgContent = UIImageView(image: UIImage(named: "pngegg"))
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
            imgContent.widthAnchor.constraint(equalToConstant: 50),
            imgContent.heightAnchor.constraint(equalToConstant: 50)
        ])
        return smallStackView
    }
}
#if DEBUG

import SwiftUI

struct ViewController_Presentable: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
}

struct ViewControllerPrepresentable_PreviewProvider : PreviewProvider {
    static var previews: some View {
        ViewController_Presentable()
            .previewDevice("iPhone 12 mini")
            .previewDisplayName("iPhone 12 mini")
            .ignoresSafeArea()
    }
}

#endif
