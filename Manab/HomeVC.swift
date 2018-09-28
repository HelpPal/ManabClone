//
//  HomeVC.swift
//  Manab
//
//  Created by 123 on 9/26/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class HomeDetailCell: UITableViewCell {
    
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

class HomeVC: UIViewController , UITableViewDelegate, UITableViewDataSource{

    var currentSliderIndex:Int!
    
    @IBOutlet var hometableview: UITableView!
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var markView: UIView!
    @IBOutlet var btnForward: UIButton!
    @IBOutlet var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        currentSliderIndex = 0;
        
        self.tabBarItem.selectedImage = UIImage(named:"tab_home")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.image = UIImage(named:"tab_un_home")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.init(red: 184.0/255.0, green: 0, blue: 38.0/255.0, alpha: 1.0)], for: .selected)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3 // your number of cell here
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // your cell coding
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath as IndexPath)
            as! HomeDetailCell
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
                currentSliderIndex = 0
                break;
            case 1:
                UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                    self.markView.frame.origin.x = self.btn2.frame.origin.x
                })
                currentSliderIndex = 1
                break;
            case 2:
                UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                    self.markView.frame.origin.x = self.btn3.frame.origin.x
                })
                currentSliderIndex = 2
                break;
            default:
                break;
        }
    }
    
    @IBAction func onForward(sender: UIButton!) {
        
        switch currentSliderIndex {
        case 0:
            UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                self.markView.frame.origin.x = self.btn2.frame.origin.x
            })
            currentSliderIndex = 1
            break;
        case 1:
            UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                self.markView.frame.origin.x = self.btn3.frame.origin.x
            })
            currentSliderIndex = 2
            break;
        case 2:
            UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                self.markView.frame.origin.x = self.btn1.frame.origin.x
            })
            currentSliderIndex = 0
            break;
        default:
            break;
        }
    }
    
    @IBAction func onBack(sender: UIButton!) {
        
        switch currentSliderIndex {
        case 0:
            UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                self.markView.frame.origin.x = self.btn3.frame.origin.x
            })
            currentSliderIndex = 2
            break;
        case 1:
            UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                self.markView.frame.origin.x = self.btn1.frame.origin.x
            })
            currentSliderIndex = 0
            break;
        case 2:
            UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                self.markView.frame.origin.x = self.btn2.frame.origin.x
            })
            currentSliderIndex = 1
            break;
        default:
            break;
        }
    }
}
