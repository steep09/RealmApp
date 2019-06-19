//
//  RunLogCell.swift
//  realmApp
//
//  Created by Stephenson Ang on 19/06/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class RunLogCell: UITableViewCell {
    
    @IBOutlet weak var runDurationLbl: UILabel!
    @IBOutlet weak var totalDistanceLbl: UILabel!
    @IBOutlet weak var averagePaceLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    func configureCell(run: Run) {
        self.runDurationLbl.text = run.duration.formatTimeDurationToString()
        self.totalDistanceLbl.text = "\(run.distance.metersToMiles(places: 2)) mi"
        self.averagePaceLbl.text = run.pace.formatTimeDurationToString()
        self.dateLbl.text = run.date.getDateString()
    }
}
