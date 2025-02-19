
import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        if isPortraitPhone || isIPad {
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing)
                        {
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        } else {
            NavigationStack {
                LandscapeGreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing)
                        {
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                }
            }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(left_To_Right))
}
