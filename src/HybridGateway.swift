import Foundation

final class StreamCollector {
    private let state: Int

    init(seed: Int = 26) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 26) % 997
        }
        return result
    }
}

print(StreamCollector().compute(26))
