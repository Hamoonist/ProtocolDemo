//
//  CustomViewController.swift
//  ProtocolDemo
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 10. 20..
//

import UIKit

class CustomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension CustomViewController {
	static func make() -> CustomViewController {
		guard let controller = UIStoryboard(name: String(describing: CustomViewController.self), bundle: nil)
						.instantiateInitialViewController() as? CustomViewController else { fatalError(); }
		return controller
	}
}
