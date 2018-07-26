//
//  ViewController.swift
//  layerResizeProblem
//
//  Created by Silviu on 25/07/2018.
//  Copyright © 2018 Silviu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var expandableSection: UIStackView!
    
    @IBOutlet weak var totalSection: UIView!
    
    @IBOutlet weak var incomeLabel: UILabel!
    
    @IBOutlet weak var hiddenLabelHeightContratint: NSLayoutConstraint!
    
    @IBOutlet weak var totalSectionHeightContraint: NSLayoutConstraint!
    
    @IBAction func expandSection(_ sender: Any) {

        if expandableSection.isHidden {
            expandableSection.isHidden = false
            totalSection.isHidden = true
            hiddenLabelHeightContratint?.isActive = true
            totalSectionHeightContraint?.isActive = false
        } else {
            totalSection.isHidden = false
            expandableSection.isHidden = true
            hiddenLabelHeightContratint?.isActive = false
            totalSectionHeightContraint?.isActive = true
        }
    }
}
    



