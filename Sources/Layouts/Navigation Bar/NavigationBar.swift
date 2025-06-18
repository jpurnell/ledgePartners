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
func navBar(_ logo: String? = nil, links: [(String, any StaticPage)], color: Color = .black) -> NavigationBar {
	NavigationBar(logo: logo) {
		return links.flatMap({navButton($0.0, target: $0.1, color)})
	}
	.navigationItemAlignment(.trailing)
}
