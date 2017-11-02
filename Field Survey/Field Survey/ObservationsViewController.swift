//
//  ObservationsViewController.swift
//  Field Survey
//
//  Created by Teodor Ivanov on 11/1/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import UIKit

class ObservationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var observationsTableView: UITableView!
    let observations = ObservationsJSONLoader.load(fileName: "field_observations")
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Field Survey"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return observations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "observationCell", for: indexPath)
        
        if let cell = cell as? ObservationTableViewCell {
            let observation = observations[indexPath.row]
            cell.classificationIconImageView.image = observation.classification.image
            cell.titleLabel.text = observations[indexPath.row].title
            cell.dateLabel.text = dateFormatter.string(from: observation.date)
        }
        return cell

    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ObservationDetailViewController,
           let row = observationsTableView.indexPathForSelectedRow?.row {
            destination.observation = observations[row]
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
