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
        // ***Later Addition: user can CLICK/SELECT color palette buttons to see Pantone colors***
        var colorArray: Array = [#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1), #colorLiteral(red: 0.09411764706, green: 0.1568627451, blue: 0.2862745098, alpha: 1), #colorLiteral(red: 0.1254901961, green: 0.3450980392, blue: 0.3764705882, alpha: 1), #colorLiteral(red: 0.8941176471, green: 0.8911558799, blue: 0.7292792632, alpha: 1)]
        var counter: Int = 0
        
    // if weather image == windy
        // for color in winterColorPalette {
            // color.background
        for color in colorPalette {
            color.backgroundColor = colorArray[counter]
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
