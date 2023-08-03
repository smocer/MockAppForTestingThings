//
//  SubSubMainLeftVC.swift
//  MockApp
//
//  Created by Egor Butyrin on 07.06.2023.
//

import UIKit

class SubSubMainLeftVC: SubMainVC {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Thread.sleep(forTimeInterval: 1)
    }
}
