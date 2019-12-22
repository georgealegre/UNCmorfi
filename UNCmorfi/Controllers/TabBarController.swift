//
// Copyright © 2019 George Alegre. All rights reserved.
//

import UIKit
import FontAwesome

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Create all the view controllers for the tab bar controller.
        // Standard tab bar item image size.
        let size = CGSize(width: 25, height: 25)

        let balance = UINavigationController(rootViewController: UserTableViewController())
        let balanceImage = UIImage.fontAwesomeIcon(name: .idCard, style: .regular, textColor: .black, size: size)
        balance.tabBarItem = UITabBarItem(
            title: "balance.tab.label".localized(),
            image: balanceImage,
            selectedImage: nil)
        balance.tabBarItem.accessibilityIdentifier = "balance"
        
        let menu = UINavigationController(rootViewController: MenuViewController())
        let menuImage = UIImage.fontAwesomeIcon(name: .utensils, style: .solid, textColor: .black, size: size)
        menu.tabBarItem = UITabBarItem(
            title: "menu.tab.label".localized(),
            image: menuImage,
            selectedImage: nil)
        menu.tabBarItem.accessibilityIdentifier = "menu"
        
        let map = UINavigationController(rootViewController: MapViewController())
        let mapImage = UIImage.fontAwesomeIcon(name: .map, style: .regular, textColor: .black, size: size)
        map.tabBarItem = UITabBarItem(
            title: "map.tab.label".localized(),
            image: mapImage,
            selectedImage: nil)
        map.tabBarItem.accessibilityIdentifier = "map"

        let counter = UINavigationController(rootViewController: CounterViewController())
        let counterImage = UIImage.fontAwesomeIcon(name: .tachometerAlt, style: .solid, textColor: .black, size: size)
        counter.tabBarItem = UITabBarItem(
            title: "counter.tab.label".localized(),
            image: counterImage,
            selectedImage: nil)
        counter.tabBarItem.accessibilityIdentifier = "counter"

        let info = UINavigationController(rootViewController: InfoViewController())
        let infoImage = UIImage.fontAwesomeIcon(name: .infoCircle, style: .solid, textColor: .black, size: size)
        info.tabBarItem = UITabBarItem(
            title: "info.tab.label".localized(),
            image: infoImage,
            selectedImage: nil)
        info.tabBarItem.accessibilityIdentifier = "info"
        
        // Add the view controllers to the tab bar controller view controllers.
        viewControllers = [balance, menu, counter, map, info]
    }
}
