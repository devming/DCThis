import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project

let projectName = "DCTNetwork"
let organizationName = "com.parserich"
let bundleID = "\(organizationName).\(projectName)"

let targets = Project.staticFrameworkTargets(
    name: projectName,
    bundleID: bundleID,
    dependencies: [
        .external(name: "Moya"),
        .external(name: "CombineMoya")
    ]
)

let project = Project.staticFramework(
    name: projectName,
    organizationName: organizationName,
    targets: targets
)
