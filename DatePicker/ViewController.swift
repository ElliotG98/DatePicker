//
//  ViewController.swift
//  DatePicker
//
//  Created by Elliot Glaze on 16/09/2019.
//  Copyright © 2019 Elliot Glaze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let datePicker: UIDatePicker = {
       let dp = UIDatePicker()
        dp.frame = CGRect(x: 0, y: 0, width: 500, height: 500)
        dp.timeZone = NSTimeZone.local
        dp.backgroundColor = .white
        return dp
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDatePicker()
        
        
        
    }
    
    func setupDatePicker() {
        
        datePicker.addTarget(self, action: #selector(handleDatePickerChange), for: .valueChanged)
        
        view.addSubview(datePicker)
    }
    
    @objc func handleDatePickerChange() {
        let dateFormatter = DateFormatter()
        let date = Date(timeIntervalSinceReferenceDate: 118800)
        
        dateFormatter.locale = Locale(identifier: "en_US")
        print(dateFormatter.string(from: date))
        
        
    }


}

