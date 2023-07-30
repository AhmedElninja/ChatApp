//
//  MessageCell.swift
//  Chat App
//
//  Created by Ahmed Alaa on 22/05/2023.
//

import UIKit

class MessageCell: UITableViewCell {

    //MARK: - Outlets.
    @IBOutlet weak var messageBubbel: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        messageBubbel.layer.cornerRadius = messageBubbel.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
