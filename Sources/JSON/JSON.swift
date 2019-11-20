import Foundation

public var JSON = Swift_JSON()

public class Swift_JSON {
    public let decode = Decode()
    
    public class Decode {
        public func local<T: Codable>(type: T.Type, from: String) -> [T] {
            do {
                let path = Bundle.main.path(forResource: from, ofType: "")
                let url = URL(fileURLWithPath: path!)
                let data = try Data(contentsOf: url)
                let result = try JSONDecoder().decode([T].self, from: data)
                return result
            } catch {
                print("Error: \(error)")
                return []
            }
        }
        
        public func remote<T: Codable>(type: T.Type, from: String) -> [T] {
            do {
                let url = URL(string: from)
                let data = try Data(contentsOf: url!)
                let result = try JSONDecoder().decode([T].self, from: data)
                return result
            } catch {
                print("Error: \(error)")
                return []
            }
        }
    }
}

protocol JSON: Codable {}
