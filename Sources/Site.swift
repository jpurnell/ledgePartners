import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = LedgePartners()

        do {
			try await site.publish(buildDirectoryPath: "docs")
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct LedgePartners: Site {
    var name = "Ledge Partners"
    var titleSuffix = ""
	var domain: String = "ledgepartners.com"
	var url = URL(static: "https://www.ledgepartners.com")
    var builtInIconsEnabled = true
	var robotsConfiguration = Robots()
		
	var author = "Ledge Partners"
	var language: Language = .english
	var locale: Locale = .autoupdatingCurrent
	var sd: Locale.LanguageCode? = "en-US"
	var timeZone: TimeZone = .autoupdatingCurrent
	var copyright: String? = "© \(Calendar.current.component(.year, from: Date())) Ledge Partners, All Rights Reserved."

	var description: String = "Discover strategic opportunities with Ledge Partners, dedicated to investing in small to mid-market businesses across the Northeast US. We focus on identifying and acquiring promising enterprises that demonstrate strong growth potential. Partner with us to elevate your business to new heights—let’s create lasting value together!"

    var homePage = Home()
	var staticPages: [any StaticPage] {
		AboutUs()
		Criteria()
		Home()
		Philosophy()
//		Owners()
		Careers()
		ContactUs()
		Intermediaries()
		TermsAndConditions()
		PrivacyPolicy()
	}
	
	var articlePages: [any ArticlePage] {
		Story()
	}
	
	var layout = MainLayout()
}

public enum SubDomain: String {
	case production = "www"
	case preprod = "preprod"
	case staging = "staging"
}

func siteLocation(_ scheme: String = "https:", _ site: SubDomain = .production, _ domain: String = "") -> URL {
	return URL(string: "\(scheme)//\(site.rawValue).\(domain)")!
}
