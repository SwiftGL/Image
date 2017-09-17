# SwiftGL Image Library

SwiftGL is libraries for graphics programming that's 100% Swift.

To use, include dependency in your `Package.swift`:
```swift
let package = Package(
    dependencies: [
        .Package(url: "https://github.com/SwiftGL/Image.git", majorVersion: 2)
    ]
)
```
Then `import SGLImage` in your swift file.

## Getting Started

Currently, BMP, PNG and GIF importing are working. This is all 100% Swift, there are no
bindings to any external code at all.
```
import SwiftGLres
let loader = SGLImageLoader(fromFile: "/path/to/file.bmp")
assert(loader.error == nil, loader.error!)
// You can inspect info like loader.decoder!.channels here.
// Images are automatically converted to fit any SGLImageType provided.
let image = SGLImageRGB<UInt8>(loader)
assert(loader.error == nil, loader.error!)
```
Loading into floats will make the color channels linear by applying a gamma of 2.2. You can
change the gamma in the loader. If the image specifies a gamma, it will set the loader to match.

There's also an inflate (gzip) algorithm you can use.
