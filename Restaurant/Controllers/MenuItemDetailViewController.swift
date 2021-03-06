//
//  MenuItemDetailViewController.swift
//  Restaurant
//
//  Created by Armando Carrillo on 04/08/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import UIKit

class MenuItemDetailViewController: UIViewController {
    
    var menuItem : MenuItem?
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var addToOrderButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addToOrderButton.layer.cornerRadius = 5.0
        updateUI()
        
    }
    
    func updateUI(){
        
        guard let menuItem = menuItem else { return }
        
        titleLabel.text = menuItem.name
        priceLabel.text = String(format: "$%.2f", menuItem.price)
        detailLabel.text = menuItem.detailText
        MenuController.shared.fetchImage(url: menuItem.imageURL) { (image) in
            guard let image = image else {
                return}
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
    }
    //restore the view controller
    override func encodeRestorableState(with coder: NSCoder) {
        super.encodeRestorableState(with: coder)
        guard let menuItem = menuItem else { return }
        coder.encode(menuItem.id, forKey: "menuItemId")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addToOrderButtonTapped(_ sender: UIButton) {
        guard let menuItem = menuItem else { return }
        
        //animation of button tapped
        UIView.animate(withDuration: 0.3) {
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        MenuController.shared.order.menuItems.append(menuItem)
    }
    
}
