//
//  FreeAppTableViewCellCell.swift
//  Free_PaidApps
//
//  Created by Roja on 19/11/22.
//

import UIKit

class FreeAppTableViewCellCell: UITableViewCell {
    
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var serialNoLabel: UILabel!
    @IBOutlet weak var appDescLabel: UILabel!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var iconView: UIView!
    @IBOutlet weak var appImgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        appImgView.layer.cornerRadius = 8
        appImgView.layer.masksToBounds = true
        actionLabel.layer.cornerRadius = 8
        actionLabel.layer.masksToBounds = true
    
    }
    
    func prepareFreeApp(_ freeapp: FreeAppModel) {
        serialNoLabel.text = "\(freeapp.appSerialNo)"
        appNameLabel.text = freeapp.appName
        appDescLabel.text = freeapp.appDesc
        appImgView.image = UIImage(named: freeapp.appIcon)
        actionLabel.text = freeapp.appaction
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
