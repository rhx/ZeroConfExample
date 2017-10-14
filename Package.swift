import PackageDescription

#if os(macOS)
    let cdns_sd = "CDNS_Services"
#else
    let cdns_sd = "CDNS_SD"
#endif

let package = Package(
    name: "ZeroConfExample",
    dependencies: [
        .Package(url: "https://github.com/rhx/\(cdns_sd).git", majorVersion: 1),
    ],
    swiftLanguageVersions: [3, 4]
)
