//
//  ViewController.swift
//  UserManagementApp(TableView)
//
//  Created by 中村泰輔 on 2019/08/09.
//  Copyright © 2019 icannot.t.n. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    名前のラベルとの紐付け
    @IBOutlet weak var nameLabel: UILabel!
//    自由欄のラベルとの紐付け
    @IBOutlet weak var infoLabel: UILabel!
//    それぞれ代入するテキストの初期化
    var listName : String = ""
    var info : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        それぞれへの代入
        nameLabel.text = listName
        infoLabel.text = info
    }


}

