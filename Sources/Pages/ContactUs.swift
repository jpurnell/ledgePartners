import Foundation
import Ignite

struct ContactUs: StaticPage {
	@Environment(\.articles) private var articles
    var title = "About Us"

    var body: some HTML {
		Image("/images/background/gile_panorama_crop.webp", description: "Gile Mountain Fire Tower View").resizable()
		Section {
			Text("Contact Us".uppercased()).foregroundStyle(.princetonOrange).font(.small).fontWeight(.semibold)
			Divider()
			Text(markdown: "Interested in learning more about Ledge? We'd love to talk.")
				.font(.xSmall).fontWeight(.light)
		}
		.id("Contact Us")
		.padding(.horizontal, 120)
		.padding(.vertical, 20)
		.foregroundStyle(.foregroundGray)
		.background(.backgroundGray)
		.horizontalAlignment(.center)
		Section {
			Include("contact.html")
			.containerRelativeFrame()
		}
		.id("Contact Us Form")
		.padding(.top, 20)
		.padding(.horizontal, 10)
	}
}
