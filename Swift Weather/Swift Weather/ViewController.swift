//
//  ViewController.swift
//  Swift Weather
//
//  Created by 蔡安涛 on 15/5/10.
//  Copyright (c) 2015年 cataler. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        if iOS8()
        {
            println("currentVersion is iOS8")
            locationManager.requestAlwaysAuthorization()
        }
        locationManager.startUpdatingLocation()
    }
    
    func iOS8() -> Bool
    {
        var systemVersion = UIDevice.currentDevice().systemVersion
        /* String 转成Double */
        if (systemVersion as NSString).doubleValue > 8
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

