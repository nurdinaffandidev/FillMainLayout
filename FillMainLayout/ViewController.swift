//
//  ViewController.swift
//  FillMainLayout
//
//  Created by nurdin affandi on 28/10/24.
//

import Foundation
import UIKit

class ViewController: FillMainContentViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    lazy var mainContent: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return view
    }()
    
    lazy var subContent: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    lazy var ctaButton: UIButton = {
        let button = UIButton()
        button.setTitle("CTA BUTTON", for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1.5
        button.setTitleColor(.black, for: .normal)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return button
    }()
    
    func setup() {
        mainContentStackView.addArrangedSubview(mainContent)
        mainContentStackView.addArrangedSubview(subContent)
        bottomContentStackView.addArrangedSubview(ctaButton)
        
        ctaButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        ctaButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
}
