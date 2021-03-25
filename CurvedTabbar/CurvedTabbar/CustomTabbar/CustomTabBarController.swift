//
//  CustomTabBarController.swift
//  CurvedTabbar
//
//  Created by Gagan  Vishal on 3/25/21.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /*
         // if you dont have storyboard then uncomment below code
         let tabBar = { () -> CustomizedTabBar in
                 let tabBar = CustomizedTabBar()
                 tabBar.delegate = self
                 return tabBar
             }()
         self.setValue(tabBar, forKey: "tabBar")
         */
        createTabBarItems()
    }
    
    //MARK:- Create View Controllerss and apply to tabbar
    fileprivate func createTabBarItems(){
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        //1.
        let homeController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let nav1 = UINavigationController(rootViewController: homeController)
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.circle"), selectedImage: nil)
        //2.
        let cameraController = storyboard.instantiateViewController(withIdentifier: "CameraViewController") as! CameraViewController
        let nav2 = UINavigationController(rootViewController: cameraController)
        nav2.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "scan").withRenderingMode(.alwaysOriginal), selectedImage: nil)
        //3.
        let profileController = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        let nav3 = UINavigationController(rootViewController: profileController)
        nav3.tabBarItem = UITabBarItem(title: "Wallet", image: UIImage(systemName: "person.circle"), selectedImage: nil)
        //4.
        self.viewControllers = [nav1,nav2,nav3]
        //5. Set default index to 0
        selectedIndex = 0
        //6. Set middle icon
        for tabBarItem in tabBar.items! where tabBarItem == nav2.tabBarItem {
            tabBarItem.title = ""
            tabBarItem.imageInsets = UIEdgeInsets(top: -30, left: 0, bottom: 0, right: 0)
        }
    }
}
