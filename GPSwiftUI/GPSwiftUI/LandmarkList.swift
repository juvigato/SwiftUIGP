//
//  LandmarkList.swift
//  GPSwiftUI
//
//  Created by Juliana Vigato Pavan on 08/04/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import SwiftUI

struct Dados {
    var nome: String
    var image: String
}

struct LandmarkList: View {
    var dados: [Dados] = []
//    for i in 0...<4 {
//        print("lala")
//    }
    var nomes: [String] = ["Hello", "Zewu", "Ju", "Xuxu"]
    var nomesImg: [String] = ["empire", "pocoio", "corgi", "yellow"]
    
    var body: some View {
//        List {
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[1])
//        }
//        List(landmarkData, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        NavigationView {
            List(nomes, id: \.description) { landmark in
                NavigationLink(destination: LandmarkDetail()) {
                    LandmarkRow(name: landmark, imagem: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
