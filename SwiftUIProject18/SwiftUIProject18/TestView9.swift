//
//  TestView9.swift
//  SwiftUIProject18
//
//  Created by Zachary Adams on 1/28/24.
//

import SwiftUI

struct TestOuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            TestInnerView()
                .background(.green)
            Text("Bottom")
        }
    }
}

struct TestInnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            GeometryReader(content: { geo in
                Text("Center")
                    .background(.blue)
                    .onTapGesture {
                        print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
                        print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
                        print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
                    }
            })
            .background(.orange)
            Text("Right")
        }
    }
}

struct TestView9: View {
    var body: some View {
        TestOuterView()
            .background(.red)
            .coordinateSpace(name:"Custom")
    }
}

#Preview {
    TestView9()
}
