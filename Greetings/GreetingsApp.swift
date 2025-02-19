
import SwiftUI

@main
struct GreetingsApp: App {
    
    @AppStorage("language") var language: String = "en"
    @AppStorage("languageDirection") var languageDirection: String = "left_To_Right"
    
    var layoutDirection: LayoutDirection {
        languageDirection == "left_To_Right" ? .leftToRight : .rightToLeft
    }
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirection)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
        }
    }
}
