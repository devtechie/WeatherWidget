///**
/**

WeatherWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct WeatherView: View {
    let weather: Weather
    let updatedDate: Date
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("San Francisco")
            Text("\(weather.temperature)°\(weather.unit)")
                .font(.largeTitle)
            Text(WeatherUtils.getWeatherIcon(conditionString: weather.description)).padding(.top, 10)
            Text(weather.description)
                .font(.footnote)
            HStack {
                Spacer()
                Text("Updated: \(updatedDate.timeOnly())")
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray.opacity(0.8))
            } 
        }.padding()
    }
}
