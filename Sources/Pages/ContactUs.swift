import Foundation
import Ignite

struct ContactUs: StaticPage {
	@Environment(\.articles) private var articles
    var title = "About Us"

    var body: some HTML {
		ForEach(articles.tagged("contact us")) { content in
			Image(content.image ?? "", description: content.imageDescription).resizable()
//			Text(content.text)
			Spacer(size: 10)
			Include("contact.html")
		}
	}
}
