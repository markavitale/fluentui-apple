// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FluentUI",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
//        .macOS(.v10_14),
    ],
    products: [
        .library(
            name: "FluentUI",
            type: .static,
            targets: ["FluentUI", "FluentUI-Common"]),
//        .library(
//            name: "FluentUI-macOS",
//            type: .static,
//            targets: ["FluentUI-macOS"]),
    ],
    targets: [
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FluentUI",
            path: "ios/FluentUI",
            exclude: [
                "Notification/Notification.resources.xcfilelist",
                "Avatar/Avatar.resources.xcfilelist",
                "TwoLineTitleView/TwoLineTitleView.resources.xcfilelist",
                "Table View/TableView.resources.xcfilelist",
                "Info.plist",
                "Tooltip/Tooltip.resources.xcfilelist",
                "Bottom Commanding/BottomCommanding.resources.xcfilelist",
                "Other Cells/OtherCells.resources.xcfilelist",
                "HUD/HUD.resources.xcfilelist",
                "BarButtonItems/BarButtonItems.resources.xcfilelist",
                "Core/Core.resources.xcfilelist",
                "Resources/Localization/CultureMapping.json",
                "Navigation/Navigation.resources.xcfilelist",
            ]
        ),
            
        .target(
            name: "FluentUI-Common",
            path: "apple/Resources"),
    ]
)


// #if os(iOS)
// package.products.removeAll {
//    $0.name.hasSuffix("macOS")
// }
// package.targets.removeAll {
//    $0.name.hasSuffix("macOS")
// }
// #elseif os(macOS)
// package.products.removeAll {
//    $0.name.hasSuffix("iOS")
// }
// package.targets.removeAll {
//    $0.name.hasSuffix("iOS")
// }
// #endif

