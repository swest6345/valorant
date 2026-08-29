import Foundation

final class CoreProvider {
    private let state: Int

    init(seed: Int = 83) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 83) % 997
        }
        return total
    }
}

print(CoreProvider().handle(83))
