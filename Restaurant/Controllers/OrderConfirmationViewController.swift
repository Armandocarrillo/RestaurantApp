//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by Armando Carrillo on 11/08/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    
    @IBOutlet weak var timeRemainingLabel : UILabel!
    var minutes: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func unwindToOrderList(segue: UIStoryboardSegue){
        
    }

}