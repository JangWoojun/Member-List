//
//  NextViewController.swift
//  Member List
//
//  Created by Jangwoojun on 2023/02/05.
//

import UIKit

final class NextViewController: UIViewController {

    private let nextView = NextView()
    
    override func loadView() {
        view = nextView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
