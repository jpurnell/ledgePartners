import Foundation
import Ignite

struct AboutUs: StaticPage {
	@Environment(\.articles) private var articles
    var title = "About Us"

    var body: some HTML {
		ForEach(articles.tagged("about us")) { content in
			Image(content.image ?? "", description: content.imageDescription).resizable()
			Text(content.text)
		}
	}
}
