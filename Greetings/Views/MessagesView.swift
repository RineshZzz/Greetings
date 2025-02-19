
import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(
            text: "Hello There!",
            color: .green),
        
            .init(
                text: "Welcome to Programming!",
                color: .gray),
        
            .init(
                text: "Are You Ready to,",
                color: .yellow),
        
            .init(
                text: "start Exploring?",
                color: .red),
        
            .init(
                text: "Boom.",
                color: .purple),
    ]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
