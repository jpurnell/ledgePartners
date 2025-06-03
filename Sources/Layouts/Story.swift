import Foundation
import Ignite

struct Story: ArticlePage {
	var color: Color = .darkGray
	var logo: String = navBarString(logoLocation: "/images/logos/ledge_logo.svg", "", "")
	var body: some HTML {
		Text(article.title).font(.title1).padding(.bottom, 10)
		Text(article.text)
		}
}
