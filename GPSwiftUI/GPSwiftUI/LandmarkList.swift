//
//  LandmarkList.swift
//  GPSwiftUI
//
//  Created by Juliana Vigato Pavan on 08/04/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import SwiftUI

struct Dados {
    let nome: String
    let image: String
}

struct LandmarkList: View {
    var familiaMembros = [
        Dados(nome: "Empire State Building", image: "empire"),
        Dados(nome: "Zewu", image: "pocoio"),
        Dados(nome: "Ju", image: "corgi"),
        Dados(nome: "Xuxu", image: "yellow")
    ]
    
    var body: some View {

        NavigationView {
            List(familiaMembros, id: \.nome) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(name: landmark.nome, imagem: landmark.image)
                }
            }
            .navigationBarTitle(Text("Família"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE", "iPhone X"], id: \.self) { deviceName in
//            LandmarkList()
//            .previewDevice(PreviewDevice(rawValue: deviceName))
//            .previewDisplayName(deviceName)
//
//        }
        LandmarkList()
    }
}
