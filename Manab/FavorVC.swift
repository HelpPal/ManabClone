//
//  FavorVC.swift
//  Manab
//
//  Created by 123 on 9/26/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class FavorDetailCell: UITableViewCell {
    
    @IBOutlet var mainView: UIView!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var imgThumb: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mainView.layer.cornerRadius = 8.0
        mainView.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

class FavorVC: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var favortableview: UITableView!
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var markView: UIView!
    @IBOutlet var folderView: UIView!
    @IBOutlet var selView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tabBarItem.selectedImage = UIImage(named:"tab_favor")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.image = UIImage(named:"tab_un_favor")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.init(red: 184.0/255.0, green: 0, blue: 38.0/255.0, alpha: 1.0)], for: .selected)
        
        favortableview.isHidden = false
        folderView.isHidden = true
        
        selView.layer.borderWidth = 1
        selView.layer.borderColor = UIColor.lightGray.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8 // your number of cell here
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // your cell coding
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavorCell", for: indexPath as IndexPath)
            as! FavorDetailCell
        cell.lblTitle.text = "レッスン " + String(indexPath.row + 1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // cell selected code here
    }
    
    @IBAction func onSliderAction(sender: UIButton!) {
        
        switch sender.tag {
        case 0:
            UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                self.markView.frame.origin.x = self.btn1.frame.origin.x
            })
            favortableview.isHidden = false
            folderView.isHidden = true
            break;
        case 1:
            UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                self.markView.frame.origin.x = self.btn2.frame.origin.x
            })
            favortableview.isHidden = true
            folderView.isHidden = false
            break;
        default:
            break;
        }
    }
}
