//
//  Copyright.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 8/5/24.
//

import Foundation
import Ignite

public struct Copyright: HTML {
	public init() {}
	var calendar: Calendar = .current
	var year: Int { return Calendar.current.component(.year, from: Date())}
	
	public var body: some HTML {
			//		Section {
		Text {
			"© \(year) Ledge Partners, All Rights Reserved."
		}
		.attribute("style", "font-size: 0.4rem;")
		Text {
			"Created with "
			Link("Ignite", target: "https://github.com/twostraws/Ignite")
		}
		.attribute("style", "font-size: 0.4rem;")
	}
}
