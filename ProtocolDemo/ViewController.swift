//
//  ViewController.swift
//  ProtocolDemo
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 10. 20..
//

import UIKit

class ViewController: UIViewController, DemoDelegate {

	@IBOutlet weak var demoView: DemoView!
	override func viewDidLoad() {
		super.viewDidLoad()
		demoView.delegate = self
		// Do any additional setup after loading the view.
	}
}

