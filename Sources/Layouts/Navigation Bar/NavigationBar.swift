//
//  File.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 3/10/25.
//

import Foundation
import Ignite

@MainActor func navButton(_ text: String, target: any StaticPage, color: Color = .black) -> Link {
	return Link(Button(text).buttonSize(.small).foregroundStyle(color).fontWeight(.semibold).id(text), target: target)
}

@MainActor
func navBar(_ logo: String? = nil, color: Color = .black) -> NavigationBar {
	NavigationBar(logo: logo) {
		navButton("Home", target: Home(), color: color)
		navButton("About Us", target: AboutUs(), color: color)
		navButton("Philosophy", target: Philosophy(), color: color)
		navButton("Criteria", target: Criteria(), color: color)
		navButton("For Business Owners", target: Owners(), color: color)
//		navButton("Intermediaries", target: Intermediaries())
	}
	.navigationItemAlignment(.trailing)
	.navigationBarStyle(.light)
}
