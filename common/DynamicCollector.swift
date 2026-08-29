import Foundation

final class DynamicBuilder {
    private let state: Int

    init(seed: Int = 5) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 5) % 997
        }
        return value
    }
}

print(DynamicBuilder().render(5))
