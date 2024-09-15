//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by murad on 15.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ask me anything"
        label.font = .systemFont(ofSize: 35, weight: .semibold)
        label.textColor = UIColor(red: 108 / 255, green: 78 / 255, blue: 49 / 255, alpha: 1)
        return label
    }()
    
    private let ballImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = BallImageModel.randomImage()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let askButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Ask", for: .normal)
        button.backgroundColor = UIColor(red: 108 / 255, green: 78 / 255, blue: 49 / 255, alpha: 1)
        button.layer.cornerRadius = 10
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    private func configureUI() {
        view.addSubview(titleLabel)
        view.addSubview(ballImageView)
        view.addSubview(askButton)
        
        view.backgroundColor = UIColor(red: 255 / 255, green: 219 / 255, blue: 181 / 255, alpha: 1)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            
            ballImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ballImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ballImageView.widthAnchor.constraint(equalToConstant: 200),
            ballImageView.heightAnchor.constraint(equalToConstant: 200),
            
            askButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            askButton.heightAnchor.constraint(equalToConstant: 44),
            askButton.widthAnchor.constraint(equalToConstant: 100),
            askButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        askButton.addTarget(self, action: #selector(askButtonTapped), for: .touchUpInside)
    }
    
    @objc private func askButtonTapped(sender: UIButton) {
        askButton.animateView(sender)
        ballImageView.image = BallImageModel.randomImage()
    }

}

