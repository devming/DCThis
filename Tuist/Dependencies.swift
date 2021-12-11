//
//  Dependencies.swift
//  DCThisManifests
//
//  Created by devming on 2021/11/28.
//

import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: [
        .remote(url: "https://github.com/Moya/Moya",
                requirement: .upToNextMajor(from: "15.0.0")),
        .remote(url: "https://github.com/LucasMucGH/BottomSheet.git",
                requirement: .upToNextMajor(from: "2.4.0"))
    ],
    platforms: [.iOS]
)
