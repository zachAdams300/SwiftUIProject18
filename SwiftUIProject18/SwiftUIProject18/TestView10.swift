//
//  TestView10.swift
//  SwiftUIProject18
//
//  Created by Zachary Adams on 1/28/24.
//

import SwiftUI

struct TestView10: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        GeometryReader(content: { fullView in
            ScrollView {
                ForEach(0..<50) {index in
                    GeometryReader(content: { geo in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(colors[index % 7])
                            .rotation3DEffect(
                                .degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5,
                                                      axis: (x: 0.0, y: 1.0, z: 0.0)
                            )
                    })
                    .frame(height: 40)
                }
            }
        })
    }
}

#Preview {
    TestView10()
}
