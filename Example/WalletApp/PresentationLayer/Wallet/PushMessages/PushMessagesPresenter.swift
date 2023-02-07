import UIKit
import Combine

final class PushMessagesPresenter: ObservableObject {

    private let interactor: PushMessagesInteractor
    private let router: PushMessagesRouter
    private var disposeBag = Set<AnyCancellable>()

    init(interactor: PushMessagesInteractor, router: PushMessagesRouter) {
        defer { setupInitialState() }
        self.interactor = interactor
        self.router = router
    }
}

// MARK: SceneViewModel

extension PushMessagesPresenter: SceneViewModel {
    var sceneTitle: String? {
        return interactor.subscription.metadata.name
    }

    var largeTitleDisplayMode: UINavigationItem.LargeTitleDisplayMode {
        return .always
    }
}

// MARK: Privates

private extension PushMessagesPresenter {

    func setupInitialState() {

    }
}
