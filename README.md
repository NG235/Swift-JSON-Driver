# Swift-JSON-Driver

Parsing JSON in Swift Made Simple

## How It Works

All ``JSON.decode`` methods return an array of objects conforming to the ``JSON_Object`` protocol. Please note that ``JSON_Object`` already conforms to ``Codable``

## Getting Started

**Import Module**

    import JSON
    
**Parse Local JSON**
    
    JSON.decode.local(type: Type.self, from: "file.json")
    

**Parse Remote JSON**

    JSON.decode.remote(type: Type.self, from: "https://api.provider.tld/file.json")
