//
//  DemoView.swift
//  ProtocolDemo
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 10. 20..
//

import UIKit

@IBDesignable
class DemoView: UIView {
	var delegate: DemoDelegate?
	
	@IBAction func didTap(_ sender: UIButton) {
		self.delegate?.showPopOver(sender: sender)
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		xibSetup()
	}

	// copying CustomView from Flyp Control
	
	var contentView: UIView?
	@IBInspectable var nibName: String?

	func xibSetup() {
		guard let view = loadViewFromNib() else {
			assert(false)
			return
		}
		view.frame = bounds
		view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		addSubview(view)
		contentView = view
	}

	func loadViewFromNib() -> UIView? {
		guard let nibName = nibName else {
			assert(false)
			return nil
		}
		let bundle = Bundle(for: type(of: self))
		let nib = UINib(nibName: nibName, bundle: bundle)
		return nib.instantiate(withOwner: self, options: nil).first as? UIView
	}

	override func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		xibSetup()
		contentView?.prepareForInterfaceBuilder()
	}

}
