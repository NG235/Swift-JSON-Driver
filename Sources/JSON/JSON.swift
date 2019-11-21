import Foundation

public var JSON = JSON_Swift_Driver()

public class JSON_Swift_Driver {
    public let decode = Decode()
    
    public class Decode {
        public let local = Local()
        public let remote = Remote()
        
        public class Local {
            public func returnVariable<T: JSON_Object>(type: T.Type, from: String) -> T {
                do {
                    let path = Bundle.main.path(forResource: from, ofType: "")
                    let url = URL(fileURLWithPath: path!)
                    let data = try Data(contentsOf: url)
                    let result = try JSONDecoder().decode(T.self, from: data)
                    return result
                } catch {
                    print("Error: \(error)")
                    return []
                }
            }
            
            public func returnArray<T: JSON_Object>(type: T.Type, from: String) -> [T] {
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
        }
        
        public class Remote {
            public func returnVariable<T: JSON_Object>(type: T.Type, from: String) -> T {
                do {
                    let url = URL(string: from)
                    let data = try Data(contentsOf: url!)
                    let result = try JSONDecoder().decode(T.self, from: data)
                    return result
                } catch {
                    print("Error: \(error)")
                    return []
                }
            }
            
            public func returnArray<T: JSON_Object>(type: T.Type, from: String) -> [T] {
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
}

public protocol JSON_Object: Codable {}
