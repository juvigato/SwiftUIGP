//
//  ContentView.swift
//  GPSwiftUI
//
//  Created by Juliana Vigato Pavan on 08/04/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment:.leading) {
                Text("Empire State Building")
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
        LandmarkDetail()
    }
}
