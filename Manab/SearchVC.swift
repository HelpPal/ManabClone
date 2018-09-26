//
//  SearchVC.swift
//  Manab
//
//  Created by 123 on 9/26/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tabBarItem.selectedImage = UIImage(named:"tab_search")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.image = UIImage(named:"tab_un_search")?.withRenderingMode(.alwaysOriginal)
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