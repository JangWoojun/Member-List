//
//  NextViewController.swift
//  Member List
//
//  Created by Jangwoojun on 2023/02/05.
//

import UIKit

final class NextViewController: UIViewController {

    private let nextView = NextView()
    var member: Member?
    
    override func loadView() {
        view = nextView
        nextView.member = member
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpButtonAction()
    }

    func setUpButtonAction() {
        nextView.saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }
    
    @objc func saveButtonTapped() {
        print("버튼 터치")
    }

}
