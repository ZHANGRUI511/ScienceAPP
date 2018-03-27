//
//  NewsViewController.swift
//  ScienceAPP
//
//  Created by 张睿 on 26/3/18.
//  Copyright © 2018 张睿. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    var menuView: BTNavigationDropdownMenu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let items = ["All News", "Teaching & Learning", "General", "Research"]
        self.label1.text = items.first
        //self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
        // "Old" version
        // menuView = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: "Dropdown Menu", items: items)
        
        menuView = BTNavigationDropdownMenu(navigationController: self.navigationController,
                                            containerView: self.navigationController!.view,
                                            title: "News", items: items)
        
        // Another way to initialize:
        // menuView = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: BTTitle.title("Dropdown Menu"), items: items)
        
        menuView.cellHeight = 55
        menuView.cellBackgroundColor = self.navigationController?.navigationBar.barTintColor
        menuView.cellSelectionColor = UIColor.red
        menuView.shouldKeepSelectedCellColor = true
        menuView.cellTextLabelColor = UIColor.white
        menuView.cellTextLabelFont = UIFont(name: "Avenir-Heavy", size: 17)
        menuView.cellTextLabelAlignment = .left // .Center // .Right // .Left
        menuView.arrowPadding = 15
        menuView.animationDuration = 0.5
        menuView.maskBackgroundColor = UIColor.black
        menuView.maskBackgroundOpacity = 0.3
        menuView.didSelectItemAtIndexHandler = {(indexPath: Int) -> Void in
            print("Did select item at index: \(indexPath)")
            self.label1.text = items[indexPath]
        }
        
        self.navigationItem.titleView = menuView
    }
}


