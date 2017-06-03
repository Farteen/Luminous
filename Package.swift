import PackageDescription

let package = Package(
	name: "Luminous",
	targets: [Target(name: "Luminous")],
	exclude: ["Example/*", "README.md", "LICENSE", "Luminous.podspec"]
)
