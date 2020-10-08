//
//  ViewController.swift
//  IOS_AWS_APNs_Receiver
//
//  Created by Roger Navarro on 10/4/20.
//

import UIKit
import Combine

class ViewController: UIViewController {

  //MARK: - IBOutlets
  
  @IBOutlet weak var image: UIImageView!
  @IBOutlet weak var mainLabel: UILabel!
  
  var imageLoader: ImageLoader!
  
  //MARK: - View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func displayImage(typeOfGun: String) {
    mainLabel.text = "We found a weapon!"
    image.image = UIImage(named: typeOfGun)
  }
}

