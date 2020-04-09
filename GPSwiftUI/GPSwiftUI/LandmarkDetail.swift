//
//  ContentView.swift
//  GPSwiftUI
//
//  Created by Juliana Vigato Pavan on 08/04/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Dados
    
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment:.leading) {
                Text(landmark.nome)
                    .font(.title)
                    .foregroundColor(Color.pink)
                HStack {
                    Text("Portal to Olympus")
                        .font(.subheadline)
                    Spacer()
                    Text("New York")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark:Dados.init(nome: "Empire", image: "empire"))
//            .previewLayout(.fixed(width:70, height:300))
    }
}
