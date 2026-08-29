import Foundation

final class CoreMonitor {
    private let state: Int

    init(seed: Int = 69) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 69) % 997
        }
        return value
    }
}

print(CoreMonitor().sync(69))
