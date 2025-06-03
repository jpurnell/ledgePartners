import Foundation
import Ignite

struct Criteria: StaticPage {
	@Environment(\.articles) private var articles
    var title = "Our Criteria"

    var body: some HTML {
		Text("\(Date().formatted())")

	}
}
