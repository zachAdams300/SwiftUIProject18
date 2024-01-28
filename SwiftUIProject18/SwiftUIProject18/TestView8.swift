//
//  TestView8.swift
//  SwiftUIProject18
//
//  Created by Zachary Adams on 1/28/24.
//

import SwiftUI

struct TestView8: View {
    var body: some View {
        VStack {
            GeometryReader(content: { geo in
                Text("Hello, world!")
                    .frame(width: geo.size.width * 0.9, height: 40)
                    .background(.red)
            })
            .background(.green)
            
            Text("More text")
                .background(.blue)
        }
    }
}

#Preview {
    TestView8()
}
