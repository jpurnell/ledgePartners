import Foundation
import Ignite

struct Home: StaticPage {
	@Environment(\.articles) private var articles
	var title = "Welcome to Ledge Partners"
	func section(_ text: String) -> Group {
		Group {
			Section {
				ForEach(articles.tagged(text)) { content in
//					Text(content.title).font(.title2).fontWeight(.semibold)
					Text(content.text)
//					Image(content.image ?? "", description: content.imageDescription).resizable()
				}
			}.id(text)
		}
	}

    var body: some HTML {
		Section {
			Card(imageName: "/images/background/gile_panorama.jpeg") {
				Text{
					"Ledge Partners is a firm dedicated to acquiring and running an exceptional business for the long run."
				}
				.foregroundStyle(.white)
				.font(.title2)
				.fontWeight(.bold)
			}
			.contentPosition(.overlay(alignment: .center))
		}
//		.frame(minWidth: .percent(Percentage(10)), width: .percent(Percentage(100)), maxWidth: .percent(Percentage(100)), height: .percent(Percentage(40)), maxHeight: .percent(Percentage(40)), alignment: .center)
		.id("hero")
		Accordion {
			Item("Philosophy", startsOpen: true) {
				section("philosophy")
			}
			Item("Our Criteria") {
				section("criteria")
			}
			Item("Value Proposition") {
				section("valueProposition")
			}
			Item("Contact Us") {
				section("contact us")
			}
		}
		.openMode(.individual)
//		section("philosophy")
//		section("criteria")
//		section("valueProposition")
    }
}
