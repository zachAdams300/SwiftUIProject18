//
//  TestView2.swift
//  SwiftUIProject18
//
//  Created by Zachary Adams on 1/28/24.
//

import SwiftUI

struct TestView2: View {
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Hello, world!")
                .alignmentGuide(.leading) { d in d[.trailing]}
            Text("This is a longer line of text")
        })
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

#Preview {
    TestView2()
}
