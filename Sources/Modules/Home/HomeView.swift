import SwiftUI

struct HomeView: View {
    
    @State private var selectedCategoryId: Int = 0
    
    private let viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(spacing: 0) {
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
            .padding(.horizontal, 16)
            ScrollView {
                storiesCarrousel
                    .offset(y: 8)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(viewModel.fakeCategories, id: \.id) { category in
                            RoudedButton(
                                title: category.name,
                                isSelected: selectedCategoryId == category.id ? true : false,
                                action: {
                                    print("nothing")
                                    self.selectedCategoryId = category.id
                                }
                            )
                        }
                    }
                    .offset(x: 16)
                }
                .padding(.top, 32)
                LazyVGrid(columns: viewModel.contentCardGridItems) {
                    ForEach([0,1,2,3,4,5,6], id: \.self) { item in
                        ContentFeedCard()
                            .frame(height: viewModel.screenHeight * 0.4)
                    }
                }
                
            }
        }
    }
    
    private var storiesCarrousel: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                StoryItem(
                    mode: .addButton(
                        image: Image(systemName: "plus"),
                        label: "Your Story"
                    )
                )
                ForEach(viewModel.fakeStories, id: \.id) { storyCreator in
                    StoryItem(mode: .contentCreator(storyCreator))
                }
            }
            .offset(x: 16)
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
