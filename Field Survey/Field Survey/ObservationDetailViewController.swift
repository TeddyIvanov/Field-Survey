//
//  ObservationDetailViewController.swift
//  Field Survey
//
//  Created by Teodor Ivanov on 11/1/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import UIKit

class ObservationDetailViewController: UIViewController {
    
    var observation: Observation?

    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Observation"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        classificationIconImageView.image = observation?.classification.image
        titleLabel.text = observation?.title
        descriptionTextView.text = observation?.description
        if let date = observation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
