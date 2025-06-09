import Foundation
import Ignite

struct Careers: StaticPage {
	@Environment(\.articles) private var articles
    var title = "Careers"

    var body: some HTML {
		ForEach(articles.tagged("careers")) { content in
			Image(content.image ?? "", description: content.imageDescription).resizable()
			Text(content.text)
		}

	}
}
