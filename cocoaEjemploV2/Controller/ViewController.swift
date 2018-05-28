//
//  ViewController.swift
//  cocoaEjemploV2
//
//  Created by Ronald Murillo Solano on 26/5/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import UIKit
import SVProgressHUD
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var txtJson: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnGetPosts(_ sender: UIButton) {
        ApiManager.sharedInstance.getPostWithId(postId: 1, onSuccess: { json in
            DispatchQueue.main.async {
                self.txtJson?.text = String(describing: json)
            }
        }, onFailure: { error in
            let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.show(alert, sender: nil)
        })
        
        SVProgressHUD.show()
    }
    
    @IBAction func btnGetComments(_ sender: UIButton) {
        
        
        ApiManager.sharedInstance.getCommentsWithId(postId: 1, onSuccess: { json in
            DispatchQueue.main.async {
                self.txtJson?.text = String(describing: json)
            }
        }, onFailure: { error in
            let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.show(alert, sender: nil)
        })
        
        SVProgressHUD.show()
    }
    
    @IBAction func btnGetUsers(_ sender: Any) {
        ApiManager.sharedInstance.getUsersWithId(postId: 1, onSuccess: { json in
            DispatchQueue.main.async {
                self.txtJson?.text = String(describing: json)
            }
        }, onFailure: { error in
            let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.show(alert, sender: nil)
        })
        
        SVProgressHUD.show()
    }
    
    
}

