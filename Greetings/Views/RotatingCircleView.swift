
import SwiftUI

struct RotatingCircleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    @State private var isRotated = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [
            .pink, .purple, .orange, .blue, .red, .green
        ]), center: .center, angle: .zero)
    }
    
    var body: some View {
        Circle()
            .strokeBorder(angularGradient, lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation{
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatingCircleView()
}
