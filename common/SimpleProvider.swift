import Foundation

final class AtomicParser {
    private let state: Int

    init(seed: Int = 93) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 93) % 997
        }
        return acc
    }
}

print(AtomicParser().encode(93))
