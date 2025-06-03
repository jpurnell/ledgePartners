import Foundation
import Ignite

struct MainLayout: Layout {
	var color: Color = .darkGray
	var logo: String = navBarString(logoLocation: "/images/logos/ledge_logo.svg", "", "")
    var body: some Document {
		Head {
			MetaTag(name: "description", content: LedgePartners().description)
			Script(file: "https://www.googletagmanager.com/gtag/js?id=G-KX3Q54VR")
			Script(code: gtmCode())
			MetaLink(href: "/css/main.css", rel: "stylesheet")
			
		}
        Body {
			Group {
				navBar(logo, color: .black)
					.navigationItemAlignment(.trailing)
					.navigationBarStyle(.light)
					.background(.lightGray)
					.position(.default)
					.padding(.bottom, 16)
					.id("navigationBar")
				content
//				IgniteFooter()
				Text(LedgePartners().copyright ?? "").font(.title6)
			}/*.background(image: "/images/background/gile_panorama.jpeg", contentMode: .fill, position: .top, repeats: true)*/
		}
    }
}
