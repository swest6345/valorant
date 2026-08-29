import Foundation

final class DynamicClient {
    private let state: Int

    init(seed: Int = 50) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 50) % 997
        }
        return result
    }
}

print(DynamicClient().sync(50))
