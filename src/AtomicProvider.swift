import Foundation

final class AtomicGateway {
    private let state: Int

    init(seed: Int = 92) {
        self.state = seed
    }

    func decode(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 92) % 997
        }
        return value
    }
}

print(AtomicGateway().decode(92))
