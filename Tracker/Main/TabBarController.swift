//
//  TabBarController.swift
//  Tracker
//
//  Created by Владимир Богомолов on 10.09.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let borderView = UIView()
        borderView.backgroundColor = UIColor.trackerGray
        borderView.frame = CGRect(x: 0, y: 0, width: self.tabBar.frame.width, height: 1)
        // Добавляем вьюшку границы к Tab Bar
        self.tabBar.addSubview(borderView)
        
        let statisticsViewController = StatisticsViewController()
        let listTrackersViewController = ListTrackersViewController()
        // let trackersNavigationController = UINavigationController(rootViewController: trackersViewController)
        
        
        self.tabBar.tintColor = UIColor.trackerBlue
        self.tabBar.unselectedItemTintColor = UIColor.trackerGray
        
        
        
        // присваиваем вью контроллерам иконки для таб бара
        statisticsViewController.tabBarItem = UITabBarItem(
            title: "Статистика",
            image: UIImage(named: "Hare"),
            selectedImage: nil
        )
        
        listTrackersViewController.tabBarItem = UITabBarItem(
            title: "Трекеры",
            image: UIImage(named: "Circle"),
            selectedImage: nil
        )
        
        // указываем с какими вью контроллерами связан таб бар
        self.viewControllers = [listTrackersViewController, statisticsViewController]
        
        self.selectedIndex = 0
        
    }
}
