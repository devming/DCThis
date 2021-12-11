import ProjectDescription
import ProjectDescriptionHelpers

/*
                +-------------+
                |             |
                |     App     | Contains DCThis App target and DCThis unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

let projectName = "DCThis"
let organizationName = "com.parserich"

let project = Project.excutable(
    name: projectName,
    organizationName: organizationName,
    platform: .iOS,
    dependencies: [
        .project(
            target: "DCTNetwork",
            path: "../DCTNetwork"
        ),
        .project(
            target: "DCTDesignSystem",
            path: "../DCTDesignSystem"
        )
    ]
)
