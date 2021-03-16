//
//  ViewController.swift
//  youtube-app
//
//  Created by Szikszai Konrád on 2021. 03. 16..
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

