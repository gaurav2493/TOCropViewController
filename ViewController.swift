//
//  ViewController.swift
//  TOCropViewControllerExample
//
//  Created by Gaurav Sharma on 11/24/15.
//  Copyright © 2015 Tim Oliver. All rights reserved.
//

import UIKit

class ViewController: UIViewController,TOCropViewControllerDelegate {
  
  @IBOutlet weak var imageView: UIImageView!
  let vc = TOCropViewController(image: UIImage(named: "add-member.jpg"))
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  @IBAction func openCropper(sender: AnyObject) {
    
    vc.delegate = self
    self.presentViewController(vc, animated: true, completion: nil)
    vc.cropView.setAspectLockEnabledWithAspectRatio(CGSizeMake(1.0, 1.0), animated: true)
  }
  func cropViewController(cropViewController: TOCropViewController!, didCropToImage image: UIImage!, withRect cropRect: CGRect, angle: Int) {
    imageView.image = image
    
//    [self.cropView setAspectLockEnabledWithAspectRatio:aspectRatio animated:YES];
    vc.dismissViewControllerAnimated(true, completion: nil)
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
