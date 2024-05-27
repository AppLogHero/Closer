import SwiftUI

struct HomeView: View {
    
    private let viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                storiesCarrousel
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
