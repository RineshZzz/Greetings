
import SwiftUI

struct GreetingsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                TitleView()
                MessagesView()
            }
            .padding()
        }
    }
}

#Preview {
    GreetingsView()
}
