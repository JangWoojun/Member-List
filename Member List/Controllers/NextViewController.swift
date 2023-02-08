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
        if member == nil {
            let name = nextView.nameTextField.text ?? ""
            let age = Int(nextView.ageTextField.text ?? "")
            let phoneNumber = nextView.phoneNumberTextField.text ?? ""
            let address = nextView.addressTextField.text ?? ""
            
            var newMember =
            Member(name: name, age: age, phone: phoneNumber, address: address)
            newMember.memberImage = nextView.mainImageView.image
            
            let index = navigationController!.viewControllers.count - 2
            let vc = navigationController?.viewControllers[index] as! ViewController
            vc.memberListManager.makeMember(newMember)
            
            
            
        } else {
            member!.memberImage = nextView.mainImageView.image
            
            let memberId = Int(nextView.memberIdTextField.text!) ?? 0
            member!.name = nextView.nameTextField.text ?? ""
            member!.age = Int(nextView.ageTextField.text ?? "") ?? 0
            member!.phone = nextView.phoneNumberTextField.text ?? ""
            member!.address = nextView.addressTextField.text ?? ""
            
            nextView.member = member
            
            let index = navigationController!.viewControllers.count - 2
            let vc = navigationController?.viewControllers[index] as! ViewController
            vc.memberListManager.updateMember(index: memberId, member!)
            
            
            
        }
        
        self.navigationController?.popViewController(animated: true)
    }

}
