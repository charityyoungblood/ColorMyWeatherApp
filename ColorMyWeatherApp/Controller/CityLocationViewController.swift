//
//  ViewController.swift
//  ColorMyWeatherApp
//
//  Created by Charity Youngblood on 2/13/18.
//  Copyright © 2018 Charity Youngblood. All rights reserved.
//

import UIKit

// TODO: Install the following Cocoapods:
    // CZWeatherKit
    // SwiftyJSON
    // Alamofire
    // UICircularProgressRing

class CityLocationViewController: UIViewController {

    var pantoneColors: UIColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
    
    @IBOutlet weak var cityLocationBackgroundColor: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Change background color to animate/change to a different Pantone color every few seconds
        
    }

    func changeBackgroundColor() {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

