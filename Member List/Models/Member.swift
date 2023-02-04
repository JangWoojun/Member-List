//
//  Member.swift
//  Member List
//
//  Created by Jangwoojun on 2023/02/04.
//

import UIKit

struct Member {
    
    static var memberNumbers: Int = 0
    
    let memberID: Int
    var name: String?
    var age: Int?
    var phone: String?
    var address: String?
    
    lazy var memberImage: UIImage? = {
        guard let name = name else {
            return UIImage(systemName: "person")
        }
        
        return UIImage(named: "\(name).png") ?? UIImage(systemName: "person")
    }()
    
    init(name: String?, age: Int?, phone: String?, address: String?) {
        
        self.memberID = Member.memberNumbers
        
        self.name = name
        self.age = age
        self.phone = phone
        self.address = address
        
        Member.memberNumbers += 1
    }
}
