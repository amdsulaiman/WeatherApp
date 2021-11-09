//
//  ContentView.swift
//  WeatherApp
//
//  Created by Mohammed Sulaiman on 09/02/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cityVM = CityVM()
    var body: some View {
        ZStack(alignment:.bottom){
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.01568627451, blue: 0.1568627451, alpha: 1)),Color(#colorLiteral(red: 0, green: 0.3058823529, blue: 0.5725490196, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:0){
                ScrollView(showsIndicators:false){
                    CityView(cityVM: cityVM)
                        .edgesIgnoringSafeArea(.all)

                }
            }
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
