//
//  TestView4.swift
//  SwiftUIProject18
//
//  Created by Zachary Adams on 1/28/24.
//

import SwiftUI

extension VerticalAlignment {
    struct MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct TestView4: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@twostraws")
                    .alignmentGuide(.midAccountAndName, computeValue: { dimension in
                        dimension[VerticalAlignment.center]
                    })
                Image("malta")
                    .resizable()
                    .frame(width: 64, height: 64)
                Text("HI")
                Text("HI")
                Text("HI")
            }
            
            VStack {
                Text("HI")
                Text("HI")
                Text("HI")
                Text("Full Name:")
                    .alignmentGuide(.midAccountAndName, computeValue: { dimension in
                        dimension[VerticalAlignment.center]
                    })
                Text("PAUL HUDSON")
                    .font(.largeTitle)
                Text("Hi")
            }
        }
    }
}

#Preview {
    TestView4()
}
