//
//  WeatherColorViewController.swift
//  ColorMyWeatherApp
//
//  Created by Charity Youngblood on 2/13/18.
//  Copyright © 2018 Charity Youngblood. All rights reserved.
//

import UIKit

class WeatherColorViewController: UIViewController {
    
    // TODO: Display weather condition image
    @IBOutlet weak var weatherImage: UIImageView!
    
    // TODO: Display temperature °F/°C
    @IBOutlet weak var temperatureLabel: UILabel!
    
    // TODO: Display suggestion label
    @IBOutlet weak var suggestionLabel: UILabel!
    
    // TODO: Display "playing card" image/view of color palette, below weather forecast
    
    @IBOutlet var colorPalette: [UILabel]!
    
    func changeWeatherImage() {
        var weatherArray: Array = [#imageLiteral(resourceName: "sunny"), #imageLiteral(resourceName: "Cloudy"), #imageLiteral(resourceName: "CloudyWithSun"), #imageLiteral(resourceName: "Thunder"), #imageLiteral(resourceName: "Rain")]
        var weatherCounter: Int = 0
        
        for _ in weatherArray {
            weatherImage.image = weatherArray[weatherCounter]
            weatherCounter += 1
        }
    }
    
    func changeTemperature() {
        
    }
    // TODO: figure out a better way to display color palette
        // place colors nearer to each other? stack?
    func changeColorPalette() {
        // this function will change the color of each label in the colorPalette array
        // ***Later Addition: user can CLICK/SELECT color palette buttons to see ACTUAL OUTFITS with colors***
        // **TODO: you may want to put these into a DICTIONARY to access values by "key"
        
        var fallColorArray: Array = [#colorLiteral(red: 0.09411764706, green: 0.1568627451, blue: 0.2862745098, alpha: 1), #colorLiteral(red: 0.8235294118, green: 0.7333333333, blue: 0.6156862745, alpha: 1), #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)]
        var fallColorTooArray: Array = [#colorLiteral(red: 0.662745098, green: 0.3764705882, blue: 0.231372549, alpha: 1), #colorLiteral(red: 0.7921568627, green: 0.7882352941, blue: 0.8117647059, alpha: 1), #colorLiteral(red: 0.003921568627, green: 0.3843137255, blue: 0.4392156863, alpha: 1)]
      
        var winterColorArray: Array = [#colorLiteral(red: 0.4274509804, green: 0.1019607843, blue: 0.137254902, alpha: 1), #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), #colorLiteral(red: 0.8235294118, green: 0.7333333333, blue: 0.6156862745, alpha: 1)]
        var winterColorTooArray: Array = [#colorLiteral(red: 0.3568627451, green: 0.2509803922, blue: 0.5176470588, alpha: 1), #colorLiteral(red: 0.7843137255, green: 0.6745098039, blue: 0.8235294118, alpha: 1), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
        var summerColorArray: Array = [#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
        var summerColorTooArray: Array = [#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
        var springColorArray: Array = [#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
        var springColorTooArray: Array = [#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
        
        var counter: Int = 0
        
    // if weather image == windy
        // for color in winterColorPalette {
            // color.background
        for color in colorPalette {
            color.backgroundColor = fallColorArray[counter]
            counter += 1
//            if color.tag == 1 {
//
//                color.backgroundColor = colorArray[0]
//            }
//
//            if color.tag == 2 {
//                color.backgroundColor = colorArray[1]
//            }
//
//            if color.tag == 3 {
//                color.backgroundColor = colorArray[2]
//            }
//
//            if color.tag == 4 {
//                color.backgroundColor = colorArray[3]
//            }
//        }
    }
    }
// what items have background color? use sender.tag
    // you could change the background color property of a label or view and display like a palette 
    override func viewDidLoad() {
        super.viewDidLoad()
        // weatherImage.image = 
        // Do any additional setup after loading the view.
        changeWeatherImage()
        changeColorPalette()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
