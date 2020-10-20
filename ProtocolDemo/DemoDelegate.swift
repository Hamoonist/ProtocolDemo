//
//  DemoDelegate.swift
//  ProtocolDemo
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 10. 20..
//

import UIKit

protocol DemoDelegate: UIPopoverPresentationControllerDelegate{
	func showPopOver(sender: UIView)
}

extension DemoDelegate  where Self: ViewController  {
	func showPopOver(sender: UIView){
		let customVC: CustomViewController = CustomViewController.make()
		let nav = UINavigationController(rootViewController: customVC)
		nav.modalPresentationStyle = UIModalPresentationStyle.popover
		guard let popover = nav.popoverPresentationController else {
			assert(false)
			return
		}
		customVC.preferredContentSize = CGSize(width: 500,height: 500)
		popover.delegate = self
		popover.sourceView = sender
		self.present(nav, animated: true, completion: nil)
	}
}
