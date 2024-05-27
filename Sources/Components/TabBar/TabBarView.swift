import SwiftUI

struct TabBarView<Content: View>: View {
    
    @State private var barWidth: CGFloat = 0.0
    @State private var selectedItem: TabItems = .home
    @State private var selectedShapePosition: CGFloat = 0.0
    
    private let items: [TabItems]
    private let content: (TabItems) -> Content
    
    private var clickableZoneWitdh: CGFloat {
        return barWidth / CGFloat(items.count)
    }
    
    init(items: [TabItems], content: @escaping(TabItems) -> Content) {
        self.items = items
        self.content = content
    }
    
    var body: some View {
        ZStack {
            self.content(selectedItem)
            VStack(spacing: 0) {
                Spacer()
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        Circle()
                            .fill(.red.shadow(.drop(color: .black.opacity(0.6), radius: 2)))
                            .frame(width: clickableZoneWitdh, height: 40)
                            .offset(x: selectedShapePosition)
                        HStack(spacing: 0) {
                            ForEach(items, id: \.index) { item in
                                ZStack {
                                    if item.index == selectedItem.index {
                                        item.selectedIcon
                                            .foregroundStyle(.white)
                                    } else {
                                        item.icon
                                    }
                                }
                                .frame(width: clickableZoneWitdh)
                                .onTapGesture {
                                    withAnimation(.spring) {
                                        self.selectedItem = item
                                        self.selectedShapePosition = self.getSelectedShapePosition(item.index)
                                        print(selectedShapePosition)
                                    }
                                }
                            }
                        }
                        .frame(height: 48)
                    }
                    .onAppear {
                        self.barWidth = geometry.size.width
                    }
                }
                .frame(height: 48)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 48))
                .padding(.horizontal, 8)
            }
        }
    }
    
    private func getSelectedShapePosition(_ selectedIndex: Int) -> CGFloat {
        return CGFloat(selectedIndex) * clickableZoneWitdh
    }
}
