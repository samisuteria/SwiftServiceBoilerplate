import Vapor

public struct AppController {
    public static let shared = AppController()
    
    public func app() throws -> Application {
        var config = Config.default()
        var environment = try Environment.detect()
        var services = Services.default()
        
        try configure(&config, &environment, &services)
        
        return try Application(config: config, environment: environment, services: services)
    }
    
    private func configure(_ config: inout Config, _ environment: inout Environment, _ services: inout Services) throws {
        // do any config required here
    }
}
