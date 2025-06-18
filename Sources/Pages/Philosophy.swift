import Foundation
import Ignite

struct Philosophy: StaticPage {
	var title: String = "Our Philosophy"
	
	@Environment(\.articles) private var articles
	var cardHeight = 270

	var body: some HTML {
		ZStack {
			Image("/images/background/gile_panorama_crop.webp", description: "Gile Mountain Fire Tower View").resizable()
		}

		Section {
			Text("Our Philosophy".uppercased()).foregroundStyle(.princetonOrange).font(.small).fontWeight(.semibold)
			Divider()
			Text(markdown: "Regardless of industry or size, we manage any operation according to five principles: **integrity**, **long-term focus**, **culture**, **flexibility**, and **management quality**. We are committed to sustainable success through a holistic approach that prioritizes ethical stewardship and respectful collaboration.")
				.font(.small).fontWeight(.light)
		}
		.id("Our Philosophy")
		.padding(.horizontal, 120)
		.padding(.vertical, 20)
		.foregroundStyle(.foregroundGray)
		.background(.backgroundGray)
		.horizontalAlignment(.center)
		Grid {
			ForEach(articles.tagged("philosophy").sorted(by: {$0.date < $1.date })) { content in
				Section {
					Text(content.title).font(.title5).fontWeight(.bold)
					Divider()
					Text(content.text)
					Spacer().containerRelativeFrame()
				}
				.id(content.title)
				.padding(.horizontal, 10)
				.padding(.top, 15)
				.padding(.bottom, cardHeight)
				.font(.xSmall).fontWeight(.light)
				.foregroundStyle(.foregroundGray)
//				.background(.backgroundGray)
				.frame(minHeight: cardHeight, height: cardHeight, maxHeight: cardHeight, alignment: .topLeading)
			}.width(4)
		}
	}
}
