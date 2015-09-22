//
//  ViewController.swift
//  AdMobSample
//
//  Created by Mohsin on 16/09/2015.
//  Copyright (c) 2015 Mohsin. All rights reserved.
//

import UIKit
import GoogleMobileAds


class ViewController: UIViewController, GADBannerViewDelegate {

    @IBOutlet weak var bannerView: GADBannerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
        println("Google Mobile Ads SDK version: " + GADRequest.sdkVersion())
        
        // custom Ad
//        self.bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"

        // My Ad
        self.bannerView.adUnitID = "ca-app-pub-9005408608667473/3327145746"
        
        self.bannerView.adSize = kGADAdSizeBanner
        self.bannerView.delegate = self
        self.bannerView.rootViewController = self
        self.bannerView.loadRequest(GADRequest())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

