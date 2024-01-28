//
//  TestView7.swift
//  SwiftUIProject18
//
//  Created by Zachary Adams on 1/28/24.
//

import SwiftUI

struct TestView7: View {
    var body: some View {
        
        GeometryReader { proxy in
            Image(.malta)
                .resizable()
                .scaledToFit()
                .frame(width: proxy.size.width * 0.8)
                .frame(width: proxy.size.width, height: proxy.size.height) //centers the view
                
        }
    }
}

#Preview {
    TestView7()
}
