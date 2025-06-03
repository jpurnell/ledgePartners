//
//  File.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 3/10/25.
//

import Foundation
import Ignite

@MainActor func navButton(_ text: String, target: any StaticPage) -> Link {
	return Link(Button(text).buttonSize(.medium).id(text), target: target)
}

@MainActor
func navBar(_ logo: String? = nil, color: Color = .black) -> NavigationBar {
	NavigationBar(logo: logo) {
		navButton("Home", target: Home())
		navButton("About Us", target: AboutUs())
		navButton("Philosophy", target: Philosophy())
		navButton("Criteria", target: Criteria())
		navButton("For Business Owners", target: Owners())
//		navButton("Intermediaries", target: Intermediaries())
	}
	.navigationItemAlignment(.trailing)
	.navigationBarStyle(.light)
}
