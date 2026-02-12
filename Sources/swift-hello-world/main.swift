import Vapor

var env = Environment(name: "development", arguments: ["vapor", "serve", "--hostname", "0.0.0.0", "--port", "8080"])
let app = Application(env)
defer { app.shutdown() }

app.get { _ in
    "Hello world!"
}

try app.run()
