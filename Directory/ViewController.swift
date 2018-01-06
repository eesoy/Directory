//
//  ViewController.swift
//  Directory
//
//  Created by SO YOUNG on 2018. 1. 6..
//  Copyright © 2018년 SO YOUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docPath = path[0]
        
        print(docPath)
        
        path = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true)
        let catchPath = path[0]
        print(catchPath)
        
        path = NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true)
        let applicationSupportPath = path[0]
        print(applicationSupportPath)
        
        do {
            try  FileManager.default.createDirectory(atPath: applicationSupportPath, withIntermediateDirectories: true, attributes: nil)
        }
        catch let error {
            print("폴더 생성 실패 \(error.localizedDescription)")
        }
       
    }
}

