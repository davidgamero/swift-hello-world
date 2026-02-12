import Vapor

let app = Application()
defer { app.shutdown() }

app.get { _ in
    "Hello world!"
}

try app.run()
