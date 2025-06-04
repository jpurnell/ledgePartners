import Foundation
import Ignite

struct Criteria: StaticPage {
	@Environment(\.articles) private var articles
    var title = "Our Criteria"

    var body: some HTML {
		ForEach(articles.tagged("criteria")) { content in
			Image(content.image ?? "", description: content.imageDescription).resizable()
			Text(content.text)
		}
	}
}
