import Foundation
import Ignite

struct Home: StaticPage {
	@Environment(\.articles) private var articles
	var title = "Welcome to Ledge Partners"

    var body: some HTML {
		Text("\(Date().formatted())")
		Section {
			Card(imageName: "/images/background/gile_panorama.jpeg") {
				Text{
					"Ledge Partners is a firm dedicated to acquiring and running an exceptional business for the long run."
				}.font(.title2)
					.fontWeight(.bold)
					.foregroundStyle(.white)
			}
			.contentPosition(.overlay(alignment: .leading))
			.opacity(0.8)
		}.id("hero").frame(maxWidth: .max)
		Divider()
		Section {
			ForEach(articles.tagged("philosophy")) { content in
				Text(content.title).font(.title2)
				Text(content.text)
				Image(content.image ?? "", description: content.imageDescription).resizable()
			}
		}.id("philosophy")
		Divider()
		Section {
			ForEach(articles.tagged("criteria")) { content in
				Text(content.title).font(.title2)
				Text(content.text)
				Image(content.image ?? "", description: content.imageDescription).resizable()
			}
		}.id("criteria")
		Divider()
		Section {
			ForEach(articles.tagged("value proposition")) { content in
				Text(content.title).font(.title2)
				Text(content.text)
				Image(content.image ?? "", description: content.imageDescription).resizable()
			}
		}.id("valueProposition")
		Divider()
		Section {
			Group {
				Text("Contact Us goes here.")
				Image("/images/background/gile_panorama.jpeg", description: "A Panorama image from the Gile Mountain Fire Tower in Norwich, VT").resizable()
			}
		}.id("contactUs")
    }
}
