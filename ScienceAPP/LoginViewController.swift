//
//  LoginViewController.swift
//  ScienceAPP
//
//  Created by 张睿 on 20/3/18.
//  Copyright © 2018 张睿. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var StudentNum: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.login.layer.cornerRadius = 10
        self.login.layer.borderWidth = 4
        self.login.layer.borderColor = UIColor.black.cgColor
        let singleWaterWaveView = waterview(frame:view.bounds)
        view.addSubview(singleWaterWaveView)
        view.sendSubview(toBack: singleWaterWaveView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
