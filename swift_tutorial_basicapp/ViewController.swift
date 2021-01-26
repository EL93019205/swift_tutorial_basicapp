//
//  ViewController.swift
//  swift_tutorial_basicapp
//
//  Created by 早川マイケル on 2021/01/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var blurView: UIVisualEffectView!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var tapCountLabel: UILabel!

    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tap(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)

        switch count {
        case 5:
            imageView.image = UIImage(named: "back2")
            tapCountLabel.text="5です"
            break
        case 10:
            imageView.image = UIImage(named: "back3")
            tapCountLabel.text="10です"
            break
        default:
            tapCountLabel.text="5でも10でもありません"
        }
    }
    
}

