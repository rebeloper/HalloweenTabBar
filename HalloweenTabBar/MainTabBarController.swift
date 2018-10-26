//
//  MainTabBarController.swift
//  HalloweenTabBar
//
//  Created by Alex Nagy on 26/10/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import TinyConstraints

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        let index = viewControllers?.index(of: viewController)
        
        if index == 2 {
            
            let ghostAction = UIAlertAction(title: "Ghost", style: .default) { (action) in
                let vc3 = ViewController()
                vc3.image = #imageLiteral(resourceName: "Halloween3A")
                self.present(vc3, animated: true, completion: nil)
            }
            
            let catAction = UIAlertAction(title: "Cat", style: .default) { (action) in
                let vc3 = ViewController()
                vc3.image = #imageLiteral(resourceName: "Halloween3B")
                self.present(vc3, animated: true, completion: nil)
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (acltion) in
                // cancel
            }
            
            HalloweenService.showAlert(style: .actionSheet, title: "Choose one", message: nil, actions: [ghostAction, catAction, cancelAction], completion: nil)
        }
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        
        let vc1 = ViewController()
        vc1.image = #imageLiteral(resourceName: "Halloween1")
        vc1.tabBarItem.image = #imageLiteral(resourceName: "MainTabBar1").withRenderingMode(.alwaysOriginal)
        vc1.tabBarItem.selectedImage = #imageLiteral(resourceName: "MainTabBar1").withRenderingMode(.alwaysOriginal)
        
        let vc2 = ViewController()
        vc2.image = #imageLiteral(resourceName: "Halloween2")
        vc2.tabBarItem.image = #imageLiteral(resourceName: "MainTabBar2").withRenderingMode(.alwaysOriginal)
        vc2.tabBarItem.selectedImage = #imageLiteral(resourceName: "MainTabBar2").withRenderingMode(.alwaysOriginal)
        
        let vc3 = DummyViewController()
//        vc3.image = #imageLiteral(resourceName: "Halloween3A")
        vc3.tabBarItem.image = #imageLiteral(resourceName: "MainTabBar3").withRenderingMode(.alwaysOriginal)
        vc3.tabBarItem.selectedImage = #imageLiteral(resourceName: "MainTabBar3").withRenderingMode(.alwaysOriginal)
        
        let vc4 = ViewController()
        vc4.image = #imageLiteral(resourceName: "Halloween4")
        vc4.tabBarItem.image = #imageLiteral(resourceName: "MainTabBar4").withRenderingMode(.alwaysOriginal)
        vc4.tabBarItem.selectedImage = #imageLiteral(resourceName: "MainTabBar4").withRenderingMode(.alwaysOriginal)
        
        let vc5 = ViewController()
        vc5.image = #imageLiteral(resourceName: "Halloween5")
        vc5.tabBarItem.image = #imageLiteral(resourceName: "MainTabBar5").withRenderingMode(.alwaysOriginal)
        vc5.tabBarItem.selectedImage = #imageLiteral(resourceName: "MainTabBar5").withRenderingMode(.alwaysOriginal)
        
        viewControllers = [vc1, vc2, vc3, vc4, vc5]
    }
}
