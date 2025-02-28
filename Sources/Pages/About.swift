import Foundation
import Ignite

struct About: StaticLayout {
    var title = "About Us"

    var body: some HTML {
        Text("Hello world!")
            .font(.title1)
    }
}
