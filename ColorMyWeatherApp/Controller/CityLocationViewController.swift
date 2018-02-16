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

    // var pantoneColors: UIColor = UIColor(init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0))
    
    
   // @IBOutlet weak var cityLocationBackgroundColor: UIImageView!
    
    // TODO: Create button with text "Show Me My Color Palette!" > connect to CityLocationViewController with @IBAction
    
    // TODO: Check if user has enabled location settings
    
    // TODO: Create function to ask permission from user to access location (use ShoeLove App as guide)
    
    // TODO: Update Privacy properties in Info.plist file
        // > Add "Privacy - Usage Description"
        // > Add "Privacy - When in Use.."
    
    //TODO: Create a function for "If user denies location permission" place a popup (if possible) for "Please change location permission in settings"
    
    // ***The functionality below will be on a later version ***
            // > Change UI to include a text field
            // > The text field should read (or add label) "Please enter your location or Please enter your city, state"
    
    // TODO: Add image assets for weather conditions
    
    // TODO: Set up data Model - LocationWeatherData class
        // Think about what properties need to be set in this class that we can access for weather data
        // Can you store color data for Pantone suggestions here?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Create function to change background color to animate/change to a different Pantone color every few seconds
        // **ASK MENTOR TO EXPLAIN UICOLOR CUSTOM COLOR CREATION - from your understanding the steps are:
        // create a UIColor object > set to variable > call on that property/variable to set the background color (attempted this in changeBackgroundColor)
        //changeBackgroundColor()
        
    }

   // func changeBackgroundColor(){
    // cityLocationBackgroundColor.backgroundColor = pantoneColors(red: 0.0, green: 172.0, blue: 107.0, aplha: 0.0)) }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

