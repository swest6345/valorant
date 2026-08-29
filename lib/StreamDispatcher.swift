import Foundation

final class SecureResolver {
    private let state: Int

    init(seed: Int = 54) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 54) % 997
        }
        return value
    }
}

print(SecureResolver().sync(54))
