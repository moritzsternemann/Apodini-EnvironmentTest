import Apodini
import ApodiniHTTP

@main
struct EnvironmentTestWebService: WebService {
    var configuration: Configuration {
        HTTP()
        HTTPConfiguration(bindAddress: .interface("0.0.0.0", port: 8080))

        EnvironmentValue("bar", \Application.foo)
    }

    var content: some Component {
        EnvironmentTestHandler()
    }
}

//extension Application {
//    var foo: String {
//        guard let foo = self.storage[\Application.foo] else {
//            self.storage[\Application.foo] = "n/a"
//            return self.foo
//        }
//        return foo
//    }
//}
