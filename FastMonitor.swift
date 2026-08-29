import Foundation

final class SharedBuilder {
    private let state: Int

    init(seed: Int = 23) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 23) % 997
        }
        return count
    }
}

print(SharedBuilder().handle(23))
