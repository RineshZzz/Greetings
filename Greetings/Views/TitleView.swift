
import SwiftUI

struct TitleView: View {

    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
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
