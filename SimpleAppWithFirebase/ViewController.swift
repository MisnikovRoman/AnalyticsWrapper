//
//  ViewController.swift
//  SimpleAppWithFirebase
//
//  Created by MisnikovRoman on 04/03/2019.
//  Copyright © 2019 MisnikovRoman. All rights reserved.
//

import UIKit
import AnalyticsWrapper

class ViewController: UIViewController {

	@IBOutlet weak var eventTextField: UITextField!
	@IBOutlet weak var screenTextField: UITextField!

	override func viewDidLoad() {
		super.viewDidLoad()

	}
	@IBAction func sendAction(_ sender: Any) {
		let actionText = eventTextField.text ?? "none"
		AnalyticsWrapper.shared.sendEvent(actionText)
	}

	@IBAction func sendScreen(_ sender: Any) {
		let screenName = screenTextField.text ?? "none"
		AnalyticsWrapper.shared.sendScreen(screenName)
	}
}

