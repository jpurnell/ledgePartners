import Foundation
import Ignite

struct MainLayout: Layout {
	var color: Color = .darkGray
	var logo: String = navBarString(logoLocation: "/images/logos/ledge_logo_white.svg", "", "")
    var body: some Document {
		Head {
			MetaTag(name: "description", content: LedgePartners().description)
			Script(file: "https://www.googletagmanager.com/gtag/js?id=G-KX3Q54VR")
			Script(code: gtmCode())
			MetaLink(href: "/css/main.css", rel: "stylesheet")
			
		}
        Body {
			Group {
				navBar(logo, links: [("Home", Home()), ("About Us", AboutUs()), ("Philosophy", Philosophy()), ("Criteria", Criteria()), ("Contact Us", ContactUs())], color: .white)
					.navigationItemAlignment(.trailing)
					.navigationBarStyle(.light)
					.background(.clear)
					.opacity(0.8)
					.position(.fixedTop)
					.padding(.bottom, 16)
					.id("navigationBar")
				content
//				IgniteFooter()
//				Spacer(size: 100)
				Text {
					"© 2025 Ledge Partners, All Rights Reserved."
					" | "
					Link("Terms & Conditions", target: TermsAndConditions())
					" | "
					Link("Privacy Policy", target: PrivacyPolicy())
					" | "
					Link("Created with Ignite", target: URL(static: "https://github.com/twostraws/Ignite"))
				}
				.font(.xxSmall)
				.background(.lightGray)
				.foregroundStyle(.white)
				.horizontalAlignment(.trailing)
				.padding(20)
				.id("Footer")
//				navBar("© 2025 Ledge Partners, All Rights Reserved.", links: [("Terms & Conditions", TermsAndConditions()), ("Privacy Policy", PrivacyPolicy())], color: .white).background(.lightGray).foregroundStyle(.white).font(.xxxSmall).opacity(1.0).id("Footer")
			}
			
		}
    }
}
