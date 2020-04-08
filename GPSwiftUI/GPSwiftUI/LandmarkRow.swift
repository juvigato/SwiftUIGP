//
//  LandmarkRow.swift
//  GPSwiftUI
//
//  Created by Juliana Vigato Pavan on 08/04/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
//    var landmark: Landmark
    var name: String
    var imagem: String
    var cor = #colorLiteral(red: 1, green: 0.8450692296, blue: 0.8919255137, alpha: 1)
    
    var body: some View {
        HStack {
//            landmark.image
//                .resizable()
//                .frame(width:50, height: 50)
//            Text(landmark.name)
            Image(imagem).resizable().frame(width:50, height: 50, alignment: .center)
                .scaledToFit()
            Text(name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(name: "Teste", imagem: "empire")
            LandmarkRow(name: "Teste1", imagem: "empire")
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
