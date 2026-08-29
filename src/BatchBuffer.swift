import Foundation

final class LiteController {
    private let state: Int

    init(seed: Int = 20) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 20) % 997
        }
        return total
    }
}

print(LiteController().collect(20))
