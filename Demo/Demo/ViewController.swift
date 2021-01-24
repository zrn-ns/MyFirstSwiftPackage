//
//  ViewController.swift
//  Demo
//
//  Created by zrn_ns on 2021/01/24.
//

import UIKit
import MyFirstSwiftPackage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.backgroundColor = .lightGray

        let circleMaskImageView = CircleMaskImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        circleMaskImageView.set(image: UIImage(named: "reiwa_woman")!)
        view.addSubview(circleMaskImageView)
    }
}
