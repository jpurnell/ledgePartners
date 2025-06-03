import Foundation
import Ignite

struct Owners: StaticPage {
	@Environment(\.articles) private var articles
    var title = "For Owners"

    var body: some HTML {
		ForEach(articles.tagged("value proposition")) { content in
			Image(content.image ?? "", description: content.imageDescription).resizable()
			Text(content.text)
		}

	}
}
