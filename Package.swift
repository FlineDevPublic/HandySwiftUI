// swift-tools-version:5.9
import PackageDescription

let package = Package(
   name: "HandySwiftUI",
   platforms: [.iOS(.v16), .macOS(.v13), .tvOS(.v16), .watchOS(.v9), .visionOS(.v1)],
   products: [.library(name: "HandySwiftUI", targets: ["HandySwiftUI"])],
   dependencies: [.package(url: "https://github.com/FlineDev/HandySwift.git", branch: "main")],
   targets: [
      .target(
         name: "HandySwiftUI",
         dependencies: [.product(name: "HandySwift", package: "HandySwift")]
      ),
      .testTarget(name: "HandySwiftUITests", dependencies: ["HandySwiftUI"]),
   ]
)
