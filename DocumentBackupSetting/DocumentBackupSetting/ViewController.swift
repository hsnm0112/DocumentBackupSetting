//
//  ViewController.swift
//  DocumentBackupSetting
//
//  Created by hsnm on 2017/02/11.
//  Copyright © 2017年 hsnm. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func didTapAddRealmButton(_ sender: UIButton) {
        save()
        
        checkSavedPerson()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Realmの保存情報を確認
        checkSavedPerson()
    }
    
    private func checkSavedPerson() {
        let realm = try! Realm()
        let personList = realm.objects(Person.self)
        var text = ""
        
        guard personList.count > 0 else {
            text.append("Person Object count == 0\n")
            return
        }
        textView.text = personList.description
    }
    
    private func save() {
        let person = Person()
        person.id   = 1
        person.age  = 20
        person.name = "フレンズ"
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(person, update: true)
        }
    }
}
