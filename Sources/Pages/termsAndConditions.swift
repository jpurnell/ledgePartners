import Foundation
import Ignite

struct TermsAndConditions: StaticPage {
	@Environment(\.articles) private var articles
	var title = "Terms and Conditions"

	var body: some HTML {
		Section {
				ZStack {
					Image("/images/background/gile_panorama_crop.webp", description: "View from Gile Mountain Fire Tower").resizable()
					Text("Terms & Conditions").font(.title5).fontWeight(.semibold)
					.horizontalAlignment(.center)
					.padding(.top, 70)
					.padding(.horizontal, 60)
					.foregroundStyle(.white)
					.containerRelativeFrame()
				}
		}
		.id("hero")
		ForEach(articles.tagged("terms and conditions")) { content in
			Text(content.text).font(.xSmall).fontWeight(.light)
		}

	}
}
