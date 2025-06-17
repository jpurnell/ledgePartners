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
				ZStack {
					Image("/images/background/gile_panorama_crop.webp", description: "View from Gile Mountain Fire Tower").resizable()
					Text("Ledge Partners is a firm dedicated to acquiring and running an exceptional business for the long run.").font(.title5).fontWeight(.semibold)
					.horizontalAlignment(.center)
					.padding(.top, 70)
					.padding(.horizontal, 60)
					.foregroundStyle(.white)
					.containerRelativeFrame()
//					.background(.ultraThinMaterial.colorScheme(.dark))
				}
		}
		.id("hero")
//		Section {
//			Text("Ledge Partners is a firm dedicated to acquiring and running an exceptional business for the long run.").font(.title2).fontWeight(.semibold)
//		}
//		.id("Contact Us")
//		.padding(.horizontal, 120)
//		.padding(.vertical, 20)
//		.foregroundStyle(.princetonOrange)
//		.background(.ultraThinMaterial.colorScheme(.light))
//		.horizontalAlignment(.center)
		Section {
			Text("About Us".uppercased()).foregroundStyle(.princetonOrange).font(.xSmall).fontWeight(.semibold)
			Divider()
			Text(markdown: "At Ledge Partners, we specialize in acquiring businesses that fit our carefully curated investment criteria. Our mission is to partner with exceptional companies, ensuring a seamless transition while fostering growth and sustainability. ")
				.font(.small).fontWeight(.light)
			Spacer(size: 10)
			Text {
				Link("Read More".uppercased(), target: AboutUs())
					.target(.blank)
			}.font(.xxSmall).foregroundStyle(.princetonOrange)
		}
		.id("About Us")
		.padding(.horizontal, 120)
		.padding(.vertical, 20)
		.foregroundStyle(.foregroundGray)
		.background(.backgroundGray)
		.horizontalAlignment(.center)
    }
}
