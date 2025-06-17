import Foundation
import Ignite

struct Criteria: StaticPage {
	@Environment(\.articles) private var articles
    var title = "Our Criteria"
	var cardHeight = 300

    var body: some HTML {
		Image("/images/background/gile_panorama_crop.webp", description: "Gile Mountain Fire Tower View").resizable()
		Section {
			Text("Our Criteria".uppercased()).foregroundStyle(.princetonOrange).font(.small).fontWeight(.semibold)
			Divider()
			Text(markdown: "At Ledge Partners, we specialize in acquiring businesses that fit our carefully curated investment criteria. Our mission is to partner with exceptional companies, ensuring a seamless transition while fostering growth and sustainability. ")
				.font(.small).fontWeight(.light)
		}
		.id("Our Criteria")
		.padding(.horizontal, 120)
		.padding(.vertical, 20)
		.foregroundStyle(.foregroundGray)
		.background(.backgroundGray)
		.horizontalAlignment(.center)
		Grid {
			ForEach(articles.tagged("criteria").sorted(by: {$0.date < $1.date })) { content in
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
			}.width(4)
		}
	}
}

