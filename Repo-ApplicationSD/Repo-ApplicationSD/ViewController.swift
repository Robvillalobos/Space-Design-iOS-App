//
//  ViewController.swift
//  Repo-ApplicationSD
//
//  Created by Roberto Villalobos on 23-06-26.
//

import UIKit

class ViewController: UIViewController {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Home"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let spaceButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Space Design", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        view.addSubview(titleLabel)
        view.addSubview(spaceButton)

        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),

            spaceButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            spaceButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30)
        ])

        spaceButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    @objc func buttonTapped() {
        print("Botón Space Design presionado")
    }
}
