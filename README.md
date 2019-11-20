# JSON-Swift-Driver

Parsing JSON in Swift Made Simple

## Getting Started

**Import Module**

    import JSON
    
**Parse Local JSON**
    
    JSON.decode.local(type: Type.self, from: "file.json")
    
(Returns array of objects)

**Parse Remote JSON**

    JSON.decode.remote(type: Type.self, from: "https://api.provider.tld/file.json")
    
(Returns array of objects)
