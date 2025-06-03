import Foundation
import Ignite

struct Intermediaries: StaticPage {
	@Environment(\.articles) private var articles
    var title = "For Intermediaries"

    var body: some HTML {
		Text("\(Date().formatted())")

	}
}
