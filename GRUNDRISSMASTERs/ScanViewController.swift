//
//  ViewController.swift
//  GRUNDRISSMASTERs
//
//  Created by dev on 12/23/19.
//  Copyright © 2019 dev. All rights reserved.
//

import UIKit
import CubiCapture

class ScanViewController: UIViewController {

    var ccView : CCCapture = CCCapture()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ccView.fileName = "address"
        ccView.delegateCapture = self
        
        ccView.setView(sceneToController: self)
        
        // Do any additional setup after loading the view.
    }

}

extension ScanViewController : CCCcaptureDelegate {
    
    func zippedDataLocation(_ controller: CCCapture, location: URL) -> URL {
           print("location")
           return location
       }
    
    func processReadyDelegationFunc(_ controller: CCCapture) {
        print("zipped ready to be shipped")
    }
    
    func dataZippedDelegationFunc(_ controller: CCCapture) -> String {
        return "Process Ready function Called"
    }
   
}
