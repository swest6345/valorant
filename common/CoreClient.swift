import Foundation

final class LiteContext {
    private let state: Int

    init(seed: Int = 64) {
        self.state = seed
    }

    func dispatch(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 64) % 997
        }
        return result
    }
}

print(LiteContext().dispatch(64))
