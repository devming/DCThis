import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project

let projectName = "DCTInteractor"
let organizationName = "com.parserich"
let bundleID = "\(organizationName).\(projectName)"

let targets = Project.staticFrameworkTargets(
    name: projectName,
    bundleID: bundleID,
    dependencies: [
    ]
)

let project = Project.staticFramework(
    name: projectName,
    organizationName: organizationName,
    targets: targets
)
