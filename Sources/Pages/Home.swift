import Foundation
import Ignite

struct Home: StaticPage {
	@Environment(\.articles) private var articles
	var title = "Welcome to Ledge Partners"
	func section(_ text: String) -> Group {
		Group {
			Section {
				ForEach(articles.tagged(text)) { content in
					Text(content.title).font(.title2).fontWeight(.semibold)
					Text(content.text)
					Image(content.image ?? "", description: content.imageDescription).resizable()
				}
			}.id(text)
		}
	}

    var body: some HTML {
//		Text("\(Date().formatted())")
		Section {
//			Card(imageName: "/images/background/gile_panorama.jpeg") {
				Text{
					"Ledge Partners is a firm dedicated to acquiring and running an exceptional business for the long run."
				}
				.font(.title2)
				.fontWeight(.bold)
//					.foregroundStyle(.white)
//			}
//			.contentPosition(.overlay(alignment: .leading))
//			.opacity(0.8)
		}
		.id("hero")
//		.frame(maxWidth: .max)
		section("philosophy")
		section("criteria")
		section("valueProposition")
		section("contactUs")
    }
}
