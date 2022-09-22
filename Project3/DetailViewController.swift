//
//  DetailViewController.swift
//  Project1
//
//  Created by Saurabh Agarwal on 22/09/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    //IBOutlet attribute tells xcode that there's a connection between this line of code and something in interface builder
    var selectedImage: String?
    var total: Int?
    var currentCount: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(selectedImage!) - \(currentCount!)/\(total!)"
        
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
