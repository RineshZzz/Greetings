
import SwiftUI

struct TextView: View {
    
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        .blue,
        .red,
        .green,
        .orange,
        .purple,
        Color(red: 0.5, green: 0.2, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255)
    ]
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIPad ? .largeTitle : .body
    }
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.5))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
        
            .onTapGesture {
                color = colors.randomElement() ?? .red
            }
    }
}

#Preview {
    TextView(text: "Hello There!", color: .green)
}
