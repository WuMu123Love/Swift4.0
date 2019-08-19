//
//  FLsViewController.swift
//  SwiftStudyOne
//
//  Created by fls on 2019/8/12.
//  Copyright © 2019年 fls. All rights reserved.
//

import UIKit

enum FlsEnum: Int {
    case a
    case b
    case c
    case d
}
enum Fenum {
    case num(Int)
    case str(String)
    
}
class FLsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        var JBN  = FlsEnum.d;
        JBN = .a;
        switch JBN {
        case .a:
            print("a");
        case .b:
            print("b");
        case .c:
            print("c");
        case .d:
            print("d");
      
        }
        
        
        
        

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}
