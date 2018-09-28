//
//  SearchVC.swift
//  Manab
//
//  Created by 123 on 9/26/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class SearchDetailCell: UITableViewCell {
    
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

class SearchVC: UIViewController , UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var searchtableview: UITableView!
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var commonView: UIView!
    @IBOutlet weak var mainDropDown: DropDown!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.tabBarItem.selectedImage = UIImage(named:"tab_search")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.image = UIImage(named:"tab_un_search")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.init(red: 184.0/255.0, green: 0, blue: 38.0/255.0, alpha: 1.0)], for: .selected)
        
        btn1.layer.cornerRadius = 8.0
        btn1.clipsToBounds = true
        
        btn2.layer.cornerRadius = 8.0
        btn2.clipsToBounds = true
        
        btn3.layer.cornerRadius = 8.0
        btn3.clipsToBounds = true
        
        mainDropDown.layer.cornerRadius = 8.0
        mainDropDown.clipsToBounds = true
        
        let option =  Options()
        mainDropDown.optionArray = option.countries
        mainDropDown.optionIds = option.ids
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath as IndexPath)
            as! SearchDetailCell
        cell.lblTitle.text = "レッスン " + String(indexPath.row + 1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // cell selected code here
    }
}
