# Swift-JSON-Driver

Parsing JSON in Swift Made Simple

## How It Works

All ``JSON.decode`` methods return an array or a variable. Please note that ``JSON_Object`` already conforms to ``Codable``

## Getting Started

**Import Module**

    import JSON
    
**Parse Local JSON**
    
    JSON.decode.local.returnArray(type: Type.self, from: "file.json")
    JSON.decode.local.returnVariable(type: Type.self, from: "file.json")
    

**Parse Remote JSON**

    JSON.decode.remote.returnArray(type: Type.self, from: "https://api.provider.tld/file.json")
    JSON.decode.remote.returnVariable(type: Type.self, from: "https://api.provider.tld/file.json")
