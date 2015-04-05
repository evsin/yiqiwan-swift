//
//  YQWFindViewController.swift
//  yiqiwan
//
//  Created by Joshua on 15/4/5.
//  Copyright (c) 2015年 HAOJIANZONG. All rights reserved.
//

import UIKit

class YQWFindViewController: UIViewController {
    
    struct TableViewCellIdentifiers {
        static let YQWPlaceCell = "YQWPlaceCell"
    }
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var triangleView: UIImageView!
    @IBOutlet weak var navContainerView: UIView!
    @IBAction func codePlaceBtnDidClicked(sender: UIButton) {
        self.changePositionWithBtn(sender)
    }
    @IBAction func projectMeetingBtnDidClicked(sender: UIButton) {
        self.changePositionWithBtn(sender)
    }
    @IBAction func personalMeetingBtnDidClicked(sender: UIButton) {
        self.changePositionWithBtn(sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // 注册cell
        self.cellRegister()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: 调整导航按钮位置
    func changePositionWithBtn(sender: UIButton) {
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            // 改变位置
            var navViewCenter = self.view.window!.convertPoint(self.navContainerView.center, toWindow: self.view.window)
            var senderCenter = self.view.window!.convertPoint(sender.center, toWindow: self.view.window)
            var triangleCenter = self.view.window!.convertPoint(self.triangleView.center, toWindow: self.view.window)
            navViewCenter.x -= senderCenter.x - triangleCenter.x
            self.navContainerView.center.x = self.navContainerView.convertPoint(navViewCenter, fromView: self.view.window).x
            
            // 调整颜色
            for i in self.navContainerView.subviews {
                if i === sender {
                    i.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
                } else {
                    i.setTitleColor(UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 0.5), forState: UIControlState.Normal)
                }
            }
        }) { (True) -> Void in
            
        }
    }
    
    // MARK: 注册cell
    func cellRegister() {
        tableView.registerNib(UINib(nibName: TableViewCellIdentifiers.YQWPlaceCell, bundle: nil), forCellReuseIdentifier: TableViewCellIdentifiers.YQWPlaceCell)
    }

}

extension YQWFindViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableViewCellIdentifiers.YQWPlaceCell, forIndexPath: indexPath) as UITableViewCell

        return cell;
    }
}

extension YQWFindViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return YQWPlaceCell.heightForYQWPlaceCell();
    }
}
