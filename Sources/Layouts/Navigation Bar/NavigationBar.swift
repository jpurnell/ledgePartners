//
//  File.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 3/10/25.
//

import Foundation
import Ignite

@MainActor func navButton(_ text: String, target: any StaticPage, _ color: Color = .black, _ buttonSize: Button.Size = .medium, _ fontWeight: Font.Weight = .semibold) -> Link {
	return Link(Button(text).buttonSize(buttonSize).foregroundStyle(color).fontWeight(fontWeight).id(text), target: target)
}

@MainActor
func navBar(_ logo: String? = nil, color: Color = .black) -> NavigationBar {
	NavigationBar(logo: logo) {
		navButton("Home", target: Home(), color)
		navButton("About Us", target: AboutUs(), color)
		navButton("Philosophy", target: Philosophy(), color)
		navButton("Criteria", target: Criteria(), color)
//		navButton("For Business Owners", target: Owners(), color)
		navButton("Contact Us", target: ContactUs(), color)
	}
	.navigationItemAlignment(.trailing)
}
