//
//  CircleImage.swift
//  GPSwiftUI
//
//  Created by Juliana Vigato Pavan on 08/04/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("empire")
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white,lineWidth: 3))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
