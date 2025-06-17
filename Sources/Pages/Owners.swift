import Foundation
import Ignite

struct Owners: StaticPage {
	@Environment(\.articles) private var articles
    var title = "For Owners"
	var cardHeight = 150

    var body: some HTML {
		Image("/images/background/gile_panorama_crop.webp", description: "Gile Mountain Fire Tower View").resizable()
		Section {
			Text("Our Core Beliefs".uppercased()).foregroundStyle(.princetonOrange).font(.small).fontWeight(.semibold)
			Divider()
			Text(markdown: "Our core beliefs lie at the foundation of our operating philosophy and are embedded in every facet of our firm. ")
				.font(.small).fontWeight(.light)
		}
		.id("Our Core Beliefs")
		.padding(.horizontal, 120)
		.padding(.vertical, 20)
		.foregroundStyle(.foregroundGray)
		.background(.backgroundGray)
		.horizontalAlignment(.center)
		Grid {
			ForEach(articles.tagged("core beliefs").sorted(by: {$0.date < $1.date })) { content in
				Section {
					Text(content.title).font(.title5).fontWeight(.bold)
					Divider()
					Text(content.text)
				}
				.id(content.title)
				.padding(.horizontal, 10)
				.padding(.top, 15)
				.padding(.bottom, cardHeight)
				.font(.xSmall).fontWeight(.light)
				.foregroundStyle(.foregroundGray)
//				.background(.backgroundGray)
				.frame(minHeight: cardHeight, height: cardHeight, maxHeight: cardHeight + 50, alignment: .topLeading)
			}.width(6)
		}

	}
}

