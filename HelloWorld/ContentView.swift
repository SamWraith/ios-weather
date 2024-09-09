//
//  ContentView.swift
//  HelloWorld
//
//  Created by ACE on 01/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            
            VStack(spacing: 10){
                CityTextView(cityText: "Noida")
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                Text("35°")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundStyle(Color(.white))
                    .padding(.bottom, 40)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 10) {
                        WeatherDayView(dayOfWeek: "TUE",
                                       imageName: "cloud.sun.fill",
                                       temp: 30)
                        
                        WeatherDayView(dayOfWeek: "WED",
                                       imageName: "sun.max.fill",
                                       temp: 39)
                        WeatherDayView(dayOfWeek: "THU",
                                       imageName: "cloud.sun.fill",
                                       temp: 30)
                        WeatherDayView(dayOfWeek: "FRI",
                                       imageName: "wind",
                                       temp: 30)
                        WeatherDayView(dayOfWeek: "SAT",
                                       imageName: "snow",
                                       temp: 13)
                        WeatherDayView(dayOfWeek: "SUN",
                                       imageName: "cloud.sun.fill",
                                       temp: 30)
//                        Spacer()
                    }
                }
                
                Spacer()
                
//                Button("Change Day Time"){
//                    print("Tapped ! ")
//                }
                Button{
                    print("Tapped!")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
            
            
           
            
            
        }
        
        
    }
}


#Preview {
    ContentView()
}


struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temp: Int
    var body: some View {
        VStack(spacing: 2){
            Text(dayOfWeek)
                .font(.system(size: 22, weight: .medium))
                .foregroundStyle(Color(.white))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                
            Text("\(temp)°")
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(Color(.white))
        }
        .padding()
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityText: String
    var body: some View {
        Text(cityText)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(Color(.white))
            .padding()
    }
}
