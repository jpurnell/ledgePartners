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
				navBar(logo, color: .white)
					.navigationItemAlignment(.trailing)
					.navigationBarStyle(.light)
					.background(.clear)
					.opacity(0.8)
					.position(.fixedTop)
					.padding(.bottom, 16)
					.id("navigationBar")
				content
//				IgniteFooter()
				Spacer(size: 100)
				Text(LedgePartners().copyright ?? "").font(.title6)
			}/*.background(image: "/images/background/gile_panorama.jpeg", contentMode: .fill, position: .top, repeats: true)*/
		}
    }
}
