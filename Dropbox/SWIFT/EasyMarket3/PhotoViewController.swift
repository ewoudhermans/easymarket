//
//  PhotoViewController.swift
//  EasyMarket3
//
//  Created by Ewoud Hermans on 13/11/15.
//  Copyright © 2015 Ewoud Hermans. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    var currentPhoto : Photo?
    
    @IBOutlet weak var currentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var image = UIImage(named: currentPhoto!.filename)
        currentImage.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
