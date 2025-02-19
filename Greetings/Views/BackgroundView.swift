
import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.blue, Color(red: 0.6, green: 0.4, blue: 1.0) ],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .opacity(0.5)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
