import Apodini

extension Application {
    var foo: String {
        guard let foo = self.storage[\Application.foo] else {
            self.storage[\Application.foo] = "n/a"
            return self.foo
        }
        return foo
    }
}
