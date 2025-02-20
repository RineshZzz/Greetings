
import SwiftUI
import TipKit

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
            
                .task {
                        // Configure and load your tips at app launch.
                    do {
                        try Tips.configure()
                    }
                    catch {
                            // Handle TipKit errors
                        print("Error initializing TipKit \(error.localizedDescription)")
                    }
                }
        }
    }
}
