# XrayKit

XrayKit is a robust iOS framework that provides a native integration of Xray-core functionality for iOS applications. This framework serves as a high-performance wrapper around the Xray-core, enabling seamless implementation and management of Xray features in iOS applications.

## Overview

XrayKit delivers a comprehensive suite of APIs for interacting with Xray-core, encompassing configuration management, geo data handling, connection testing, and runtime control. The framework is engineered to maintain the full power of Xray-core while providing a developer-friendly interface.

## Professional Services

I offer professional development services for custom iOS VPN and proxy client applications. Whether you need a complete solution from scratch or integration with existing systems, I can help bring your vision to life. My expertise includes:

- Custom VPN client development
- Proxy client implementation
- Network security solutions
- iOS app architecture
- Performance optimization
- Security hardening

For professional inquiries, please contact me on Telegram: [@codewithtamim](https://t.me/codewithtamim)

## Installation

### Swift Package Manager

1. In Xcode, select File > Add Packages...
2. Enter the repository URL: `https://github.com/CodeWithTamim/XrayKit.git`
3. Select the version you want to use
4. Click Add Package

### Manual Installation

1. Download the latest release from the [Releases](https://github.com/CodeWithTamim/XrayKit/releases) page
2. Drag the `XrayKit.xcframework` into your project
3. Ensure "Copy items if needed" is checked
4. Add the framework to your target's "Frameworks, Libraries, and Embedded Content" section

## API Documentation

### Core Functionality

#### 1. Xray Instance Management

```swift
/// Creates a properly formatted base64 request for running Xray
/// - Parameter configStr: The Xray configuration string
/// - Returns: A base64 encoded request string
func NewXrayRunRequest(configStr: String) -> String

/// Starts Xray with the provided configuration
/// - Parameter xrayRequest: Base64 encoded request string
/// - Returns: Base64 encoded response string
func RunXray(xrayRequest: String) -> String

/// Stops the running Xray instance
/// - Returns: Base64 encoded response string
func StopXray() -> String

/// Retrieves the current Xray version
/// - Returns: Base64 encoded version string
func XrayVersion() -> String
```

#### 2. Configuration Testing

```swift
/// Tests the Xray configuration
/// - Parameter base64Text: Base64 encoded configuration test request
/// - Returns: Base64 encoded test results
func TestXray(base64Text: String) -> String

/// Performs a ping test for outbound connection
/// - Parameter base64Text: Base64 encoded ping request containing:
///   - datDir: String
///   - configPath: String
///   - timeout: Int
///   - url: String
///   - proxy: String
/// - Returns: Base64 encoded ping results
func Ping(base64Text: String) -> String
```

### Geo Data Management

#### 1. Geo Data Operations

```swift
/// Counts geo data entries
/// - Parameter base64Text: Base64 encoded request containing:
///   - datDir: String
///   - name: String
///   - geoType: String
/// - Returns: Base64 encoded count results
func CountGeoData(base64Text: String) -> String

/// Thins geo data based on configuration
/// - Parameter base64Text: Base64 encoded request containing:
///   - datDir: String
///   - configPath: String
///   - dstDir: String
/// - Returns: Base64 encoded operation results
func ThinGeoData(base64Text: String) -> String

/// Reads geo files
/// - Parameter base64Text: Base64 encoded request
/// - Returns: Base64 encoded JSON containing domain and IP arrays
func ReadGeoFiles(base64Text: String) -> String
```

### Statistics and Monitoring

```swift
/// Queries inbound and outbound statistics
/// - Parameter base64Text: Base64 encoded server string
/// - Returns: Base64 encoded statistics
func QueryStats(base64Text: String) -> String
```

## Usage Examples

### Basic Setup

```swift
import XrayKit

// Xray configuration
let config = """
{
    "inbounds": [
        {
            "port": 1080,
            "protocol": "socks",
            "settings": {
                "auth": "noauth"
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom"
        }
    ]
}
"""

// Create base64 request
let base64Request = XrayKit.NewXrayRunRequest(configStr: config)

// Initialize Xray
let response = XrayKit.RunXray(xrayRequest: base64Request)
```

### Testing Connection

```swift
// Ping configuration
let pingConfig = """
{
    "datDir": "/path/to/dat",
    "configPath": "/path/to/config.json",
    "timeout": 5000,
    "url": "https://www.google.com",
    "proxy": "your-proxy"
}
"""

let pingData = pingConfig.data(using: .utf8)!
let base64Ping = pingData.base64EncodedString()

let response = XrayKit.Ping(base64Text: base64Ping)
```

### Working with Geo Data

```swift
// Geo data configuration
let geoConfig = """
{
    "datDir": "/path/to/dat",
    "name": "geoip",
    "geoType": "ip"
}
"""

let geoData = geoConfig.data(using: .utf8)!
let base64Geo = geoData.base64EncodedString()

let response = XrayKit.CountGeoData(base64Text: base64Geo)
```

## Response Handling

All API responses are returned as base64 encoded strings. The following example demonstrates proper response handling:

```swift
if let responseData = Data(base64Encoded: response),
   let jsonString = String(data: responseData, encoding: .utf8) {
    if let jsonData = jsonString.data(using: .utf8),
       let json = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] {
        // Process the decoded response
        print(json)
    }
}
```

## Directory Structure

The framework maintains the following directory structure:

```
.
├── dat/           # Geo data files directory
└── config/        # Configuration files directory
    └── config.json # Xray configuration file
```

## Requirements

- iOS 15.0+
- Latest Xcode version recommended
- Swift 5.0+

## Author

CodeWithTamim

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

We welcome contributions to XrayKit. Please follow these guidelines when contributing:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines

- Follow Swift style guidelines
- Write unit tests for new features
- Update documentation for API changes
- Ensure all tests pass before submitting PR
- Use meaningful commit messages

### Code of Conduct

- Be respectful and inclusive
- Be patient and welcoming
- Be thoughtful
- Be collaborative
- When disagreeing, try to understand why

### Reporting Issues

Please report bugs and feature requests using the GitHub issue tracker. Include:
- Detailed description of the issue
- Steps to reproduce
- Expected behavior
- Actual behavior
- Environment details 