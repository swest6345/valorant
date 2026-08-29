import Foundation

final class AtomicBuilder {
    private let state: Int

    init(seed: Int = 47) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 47) % 997
        }
        return value
    }
}

print(AtomicBuilder().resolve(47))
