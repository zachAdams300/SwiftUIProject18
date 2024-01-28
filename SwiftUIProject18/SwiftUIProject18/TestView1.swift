//
//  TestView1.swift
//  SwiftUIProject18
//
//  Created by Zachary Adams on 1/28/24.
//

import SwiftUI

struct TestView1: View {
    var body: some View {
        Text("Live long and prosper")
            .frame(width: 300, height: 300, alignment: .topLeading)
        
        HStack(alignment:.lastTextBaseline) {
            Text("Live")
                .font(.caption)
            Text("long")
            Text("and")
                .font(.title)
            Text("prosper")
                .font(.largeTitle)
        }
    }
}

#Preview {
    TestView1()
}
