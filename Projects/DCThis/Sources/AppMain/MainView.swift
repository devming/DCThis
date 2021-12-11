//
//  MainView.swift
//  DCThis
//
//  Created by devming on 2021/12/05.
//  Copyright © 2021 com.parserich. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                ZStack {
                    
                }
                .frame(width: UIScreen.main.bounds.width / 1.6)
                .padding(.horizontal, 25)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
