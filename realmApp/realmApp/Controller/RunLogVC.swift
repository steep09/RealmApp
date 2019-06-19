//
//  SecondViewController.swift
//  realmApp
//
//  Created by Stephenson Ang on 19/06/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class RunLogVC: UIViewController {

    @IBOutlet weak var runLogTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        runLogTableView.delegate = self
        runLogTableView.dataSource = self
    }
    
}

extension RunLogVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Run.getAllRuns()?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RunLogCell") as? RunLogCell {
            guard let run = Run.getAllRuns()?[indexPath.row] else {
                return RunLogCell()
            }
            cell.configureCell(run: run)
            return cell
        } else {
            return RunLogCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(91)
    }
    
}
