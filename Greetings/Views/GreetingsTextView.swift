
import SwiftUI

struct GreetingsTextView: View {
    
    @Binding var subtitle: LocalizedStringKey
    
    let subtitles: [LocalizedStringKey] = [
        "Exploring iOS Programming",
        "SwiftUI is awesome!",
        "SwiftUI is the future!",
        "SwiftUI is the best!",
        "SwiftUI is the coolest!",
        "SwiftUI is the most awesome!"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
        }
        .onTapGesture {
            subtitle = subtitles.randomElement() ?? ""
        }
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("Exploring iOS Programming"))
}
