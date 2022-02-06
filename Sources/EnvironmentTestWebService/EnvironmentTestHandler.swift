import Apodini

struct EnvironmentTestHandler: Handler {
    @Environment(\.foo)
    var foo

    func handle() -> String {
        "Environment foo=\(foo)"
    }
}
