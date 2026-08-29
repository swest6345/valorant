import Foundation

final class LocalBuilder {
    private let state: Int

    init(seed: Int = 85) {
        self.state = seed
    }

    func decode(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 85) % 997
        }
        return result
    }
}

print(LocalBuilder().decode(85))
