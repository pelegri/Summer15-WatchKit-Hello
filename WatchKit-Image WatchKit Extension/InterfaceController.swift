//
//  InterfaceController.swift
//  WatchKit-Image WatchKit Extension
//
//  Created by Antony Bello on 7/14/15.
//  Copyright (c) 2015 Antony Bello. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var instagramImage: WKInterfaceImage!
    
    func loadImage() {
        
        let url = NSURL(string: "https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-15/11420957_1465761833717060_1003862673_n.jpg")
        
        let data = NSData(contentsOfURL: url!)
        
        let image = UIImage(data: data!)
        
        instagramImage.setImage(image)
        
        NSLog("image is set");
        
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        
        super.awakeWithContext(context)
        
        loadImage()
}


    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
