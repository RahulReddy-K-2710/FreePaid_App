//
//  PaidCell.swift
//  Free_PaidApps
//
//  Created by Roja on 19/11/22.
//

import UIKit

class PaidAppTableViewCell: UITableViewCell {
    
//MARK: Outlets
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var serialNoLabel: UILabel!
    @IBOutlet weak var purchaseLabel: UILabel!
    @IBOutlet weak var appDescLabel: UILabel!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var appImgView: UIImageView!
    @IBOutlet weak var iconView: UIView!
    @IBOutlet weak var tabButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        appNameLabel.layer.cornerRadius = 8
        appNameLabel.layer.masksToBounds = true
        actionLabel.layer.cornerRadius = 8
        actionLabel.layer.masksToBounds = true
        appImgView.layer.cornerRadius = 8
        appImgView.clipsToBounds = true
    }
    
    
    func preparePaidApp(_ paidApp: PaidAppModel) {
        serialNoLabel.text = "\(paidApp.appSerialNo)"
        appNameLabel.text = paidApp.appName
        appDescLabel.text = paidApp.appDesc
        actionLabel.text = paidApp.appaction
        purchaseLabel.text = paidApp.appPurchase
        appImgView.image = UIImage(named: paidApp.appIcon)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
