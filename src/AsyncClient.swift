import Foundation

final class SecureAdapter {
    private let state: Int

    init(seed: Int = 34) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 34) % 997
        }
        return acc
    }
}

print(SecureAdapter().compute(34))
