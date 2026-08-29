import Foundation

final class SimpleCollector {
    private let state: Int

    init(seed: Int = 51) {
        self.state = seed
    }

    func load(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 51) % 997
        }
        return value
    }
}

print(SimpleCollector().load(51))
