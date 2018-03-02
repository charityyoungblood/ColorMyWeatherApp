//
//  ViewController.swift
//  ColorMyWeatherApp
//
//  Created by Charity Youngblood on 2/13/18.
//  Copyright © 2018 Charity Youngblood. All rights reserved.
//

import UIKit
import CoreLocation


// TODO: Install the following Cocoapods:
    // CZWeatherKit
    // SwiftyJSON
    // Alamofire
    // UICircularProgressRing

class CityLocationViewController: UIViewController, CLLocationManagerDelegate {
    
    // TODO: Change color of status icons to white

    // var pantoneColors: UIColor = UIColor(init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0))
    
    
   // @IBOutlet weak var cityLocationBackgroundColor: UIImageView!
    
    // TODO: Create button with text "Show Me My Color Palette!" > connect to CityLocationViewController with @IBAction
    
    // TODO: Check if user has enabled location settings
    
    //MARK: - Create CLLocationManager object
    /*********************************************************/
    
    let locationManager = CLLocationManager()  // this represents creation of a new CLLocationManager() object with no parameters and storing it into
    // the variable "locationManager"
    
    //MARK: - Check if your app is authorized to use location services
    /******************************************************************/
    
    // ** How do you ONLY request access if the user has not already granted access (don't ask every time the user uses the app)? - not available? Also cannot ask user for permission more than once **
    
    
    func isAppAuthorized(){ // this method should prompt the user for location services permission if they have disable location services
        if CLLocationManager.locationServicesEnabled() {
            // ** Why can't I use locationManager.authorizationStatus() since locationManager is an instance of the CLLocationManager class? ***
            
            if CLLocationManager.authorizationStatus() == .denied {
                let alert = UIAlertController(title: "App Permission Denied", message: "Please enable location services in Settings", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
                    switch action.style{
                    case .default:
                        print("default")
                        
                    case .cancel:
                        print("cancel")
                        
                    case .destructive:
                        print("destructive")
                    }}))
                
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let accurateLocation = locations[locations.count - 1] // this stores user location into variable
        if accurateLocation.horizontalAccuracy > 0 { // line 112 ensures once a valid location is found - the app will stop searching for location
            locationManager.stopUpdatingLocation()
            locationManager.delegate = nil
            print("longitude = \(accurateLocation.coordinate.longitude), latitude = \(accurateLocation.coordinate.latitude)")
            
            //            let latitude = accurateLocation.coordinate.latitude
            //            let longitude = accurateLocation.coordinate.longitude
            //
            
        }
    }
    
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
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Create function to change background color to animate/change to a different Pantone color every few seconds
        // **ASK MENTOR TO EXPLAIN UICOLOR CUSTOM COLOR CREATION - from your understanding the steps are:
        // create a UIColor object > set to variable > call on that property/variable to set the background color (attempted this in changeBackgroundColor)
        //changeBackgroundColor()
        isAppAuthorized()
        
    }

   // func changeBackgroundColor(){
    // cityLocationBackgroundColor.backgroundColor = pantoneColors(red: 0.0, green: 172.0, blue: 107.0, aplha: 0.0)) }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

