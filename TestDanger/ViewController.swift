//
//  ViewController.swift
//  TestDanger
//
//  Created by bfrolicher on 12/11/2020.
//  Copyright © 2020 Inflexsys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var viewModel: ViewModelProtocol = ViewModel()
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = viewModel.name
    }
}

