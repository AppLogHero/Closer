import SwiftUI

struct NavigationBarView: View {
    
    private let title: String
    private let actions: [BarButtonItem]
    
    init(title: String, actions: [BarButtonItem]) {
        self.title = title
        self.actions = actions
    }
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 24, weight: .heavy))
            Spacer()
            ForEach(actions, id: \.id) { action in
                action
            }
        }
        .padding(.bottom, 8)
    }
}

#Preview {
    NavigationBarView(
        title: "Home",
        actions: [
            BarButtonItem(
                icon: Image(systemName: "bell.fill"),
                action: {
                    
                }
            ),
            BarButtonItem(
                icon: Image(systemName: "message.badge.filled.fill"),
                action: {
                    
                }
            )
        ]
    )
}
