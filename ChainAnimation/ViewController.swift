//
//  ViewController.swift
//  ChainAnimation
//
//  Created by Jamario Davis on 12/1/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var findLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgImage.alpha = 0
        titleLabel.alpha = 0
        descLabel.alpha = 0
        goButton.alpha = 0
        findLabel.alpha = 0
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1, animations: {
            self.bgImage.alpha = 0.6
        }) { (true) in
            self.showTitle()
        }
    }
    func showTitle() {
        UIView.animate(withDuration: 1, animations: {
            self.titleLabel.alpha = 1
        }, completion: { (true) in
            self.showDesc()
        })
    }
    func showDesc() {
        UIView.animate(withDuration: 1, animations: {
            self.descLabel.alpha = 1
        }, completion: { (true) in
            self.showButtonAndText()
        })
    }
    func showButtonAndText() {
        UIView.animate(withDuration: 1, animations: {
            self.goButton.alpha = 1
            self.findLabel.alpha = 1
        })
    }
}

