//
//  MineViewController.swift
//  demo
//
//  Created by tongyang on 2018-12-07.
//  Copyright © 2018 tongyang. All rights reserved.
//

import UIKit

class MineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.isNavigationBarHidden = true
    }
    

}
