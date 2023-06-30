//
//  HomeViewController.swift
//  AuthOnly
//
//  Created by subrata Samartha on 27/06/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Variables
    
    // MARK: - UI Componets
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.text = "Loading..."
        label.numberOfLines = 2
        
        return label
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.label.text = "You are at home page"
    }
    
    // MARK: - UI SetUp
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(didTapLogout))
        
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
    // MARK: - Selectors
    @objc private func didTapLogout() {
        self.navigationController?.popViewController(animated: true)
    }

    
    

}
