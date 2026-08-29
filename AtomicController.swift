import Foundation

final class SimpleClient {
    private let state: Int

    init(seed: Int = 3) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 3) % 997
        }
        return value
    }
}

print(SimpleClient().resolve(3))
