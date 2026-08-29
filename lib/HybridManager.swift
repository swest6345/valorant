import Foundation

final class SharedHandler {
    private let state: Int

    init(seed: Int = 7) {
        self.state = seed
    }

    func load(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 7) % 997
        }
        return count
    }
}

print(SharedHandler().load(7))
