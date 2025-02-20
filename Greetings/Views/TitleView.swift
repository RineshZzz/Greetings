
import SwiftUI
import TipKit

struct TitleView: View {

    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    private var greetingsTip = GreetingsTip()
    
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
                .popoverTip(greetingsTip)
            Spacer()
            RotatingCircleView()
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
