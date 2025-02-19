
import SwiftUI

struct VerticalTitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle)
           
            RotatingCircleView()
            Spacer()
        }.padding()
    }
}

#Preview {
    VerticalTitleView()
}
