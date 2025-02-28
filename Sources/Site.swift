import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = LedgePartners()

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
    var url = URL(static: "https://www.ledgepartners.com")
    var builtInIconsEnabled = true

    var author = "Ledge Partners"

    var homePage = Home()
    var layout = MainLayout()
}
