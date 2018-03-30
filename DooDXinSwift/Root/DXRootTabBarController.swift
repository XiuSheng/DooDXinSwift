//
//  DXRootTabBarController.swift
//  DooDXinSwift
//
//  Created by sishengxiu on 2018/3/29.
//  Copyright © 2018年 ssx. All rights reserved.
//

import UIKit

class DXRootTabBarController: UITabBarController {
    let NameArr = [NSLocalizedString("DoodHome", comment: "豆信"),NSLocalizedString("DoodContact", comment: "联系人"),NSLocalizedString("DoodDiscover", comment: "发现"),NSLocalizedString("DoodMySelf", comment: "我")]
    let picArr = ["conservastion","contact","discover","me"]
    let picSelArr = ["conservastion","contact_sel","discover_sel","me_sel"]
    let vcArr = [DXConversationController(),DXContactViewController(),DXDiscoverController(),DXMyController()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor:mHexColor(rgbValue: 0xbfbfbf)], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor:mHexColor(rgbValue: 0x1296db)], for: .selected)
        self.steupTabBar()
        // Do any additional setup after loading the view.
    }
    func steupTabBar() -> Void {
        
        let navArr = NSMutableArray.init()
        for i in 0..<vcArr.count {
            let vc = vcArr[i]
            let nav = UINavigationController.init(rootViewController: vc)
            vc.title = NameArr[i]
            vc.view.backgroundColor = UIColor.white
            vc.tabBarItem.image = UIImage.init(named: picArr[i])
            vc.tabBarItem.selectedImage = UIImage.init(named: picSelArr[i])
            navArr.add(nav)
        }
        self.setViewControllers(navArr as? [UIViewController], animated: true)
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
