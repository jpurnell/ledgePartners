import Foundation
import Ignite

struct Philosophy: StaticPage {
	@Environment(\.articles) private var articles
    var title = "Our Philosophy"

    var body: some HTML {
		ForEach(articles.tagged("philosophy")) { content in
			Image(content.image ?? "", description: content.imageDescription).resizable()
			Text(content.text)
		}
	}
}
