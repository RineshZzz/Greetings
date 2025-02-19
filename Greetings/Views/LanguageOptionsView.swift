
import SwiftUI

struct LanguageOptionsView: View {
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu{
                Button("English") {
                    language = "en"
                    layoutDirectionString = left_To_Right
                }
                
                Button("French") {
                    language = "fr-CA"
                    layoutDirectionString = left_To_Right
                }
                
                Button("Tamil") {
                    language = "ta"
                    layoutDirectionString = left_To_Right
                }
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(left_To_Right))
}
