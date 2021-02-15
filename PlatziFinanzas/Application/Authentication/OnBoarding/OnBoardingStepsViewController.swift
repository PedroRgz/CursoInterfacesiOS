//
//  OnBoardingStepsViewController.swift
//  PlatziFinanzas
//
//  Created by Pedro Rodríguez on 06/02/21.
//

import UIKit

class OnBoardingStepsViewController: UIViewController {
    
    @IBOutlet weak var titleLable :UILabel!
    @IBOutlet weak var descriptionLable :UILabel!
    @IBOutlet weak var onBoardingImageLable :UIImageView!
    
    var item :OnBoardingItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLable.text = item?.title
        descriptionLable.text = item?.description
        onBoardingImageLable.image = UIImage(named: item?.imageName ?? "")
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
