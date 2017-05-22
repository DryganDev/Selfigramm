//
//  ViewController.swift
//  Selfigramm
//
//  Created by Artsiom Sazonau on 16.02.17.
//  Copyright © 2017 Arts Corp. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImage()
        feedImage()
        cameraImage()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func profileImage() {
        let pvc = viewControllers![2]
        pvc.tabBarItem.image = UIImage(named: "tab_profile_icon")!.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        pvc.tabBarItem!.imageInsets = UIEdgeInsetsMake(4, -43, -4, 43)
        
        let font = UIFont(name: "HelveticaNeue", size: 12)
        pvc.tabBarItem!.setTitleTextAttributes([NSFontAttributeName: font!, NSForegroundColorAttributeName: UIColor.white], for: UIControlState.normal)
        
        UITabBar.appearance().tintColor = UIColor.white
        
    }

    func feedImage() {
        let pvc = viewControllers![0]
        pvc.tabBarItem.image = UIImage(named: "tab_feed_icon")!.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        pvc.tabBarItem!.imageInsets = UIEdgeInsetsMake(2, -34, -2, 34)
        
        let font = UIFont(name: "HelveticaNeue", size: 12)
        pvc.tabBarItem!.setTitleTextAttributes([NSFontAttributeName: font!, NSForegroundColorAttributeName: UIColor.white], for: UIControlState.normal)
        
        UITabBar.appearance().tintColor = UIColor.white
    }
    
    func cameraImage() {
        let pvc = viewControllers![1]
        pvc.tabBarItem.image = UIImage(named: "tab_camera_icon")!.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        pvc.tabBarItem!.imageInsets = UIEdgeInsetsMake(4, -42, -4, 42)
        
        let font = UIFont(name: "HelveticaNeue", size: 12)
        pvc.tabBarItem!.setTitleTextAttributes([NSFontAttributeName: font!, NSForegroundColorAttributeName: UIColor.white], for: UIControlState.normal)
        
        UITabBar.appearance().tintColor = UIColor.white
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

