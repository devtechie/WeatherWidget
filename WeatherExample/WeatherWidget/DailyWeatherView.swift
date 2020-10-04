///**
/**

WeatherWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct DailyWeatherView: View {
    let weather: Weather
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(weather.name.lowercased().contains("night") ? "\(weather.name.prefix(2)) 🌙" : weather.name.prefix(3))
            Text("\(weather.temperature)°\(weather.unit)")
            Text(WeatherUtils.getWeatherIcon(conditionString: weather.description)).padding(.top, 10)
        }.padding()
    }
}
