//
//  ResourcesViewController.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/5/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit

class ResourcesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.black)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func suicideHotline(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://suicidepreventionlifeline.org/")! as URL, options: [:],completionHandler: nil)
    }
    @IBAction func domesticAbuseHotline(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.thehotline.org/")! as URL, options: [:],completionHandler: nil)
    }
    @IBAction func substanceAbuseHotline(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.samhsa.gov/find-help/national-helpline")! as URL, options: [:],completionHandler: nil)
    }
    @IBAction func lgbtHotline(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"http://www.glbtnationalhelpcenter.org/")! as URL, options: [:],completionHandler: nil)
    }
    
    @IBAction func sexualAssaultHotline(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.rainn.org/")! as URL, options: [:],completionHandler: nil)
    }
    @IBAction func andMore(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://victimconnect.org/resources/national-hotlines/")! as URL, options: [:],completionHandler: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
