///**
/**

WeatherWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct WeatherEntryView: View {
    let entry: WeatherEntry
    private let baseColor = Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1))
    private let darkColor = Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
    
    @Environment(\.widgetFamily) var family
    
    var body: some View {
        switch family {
        case .systemSmall:
            ZStack {
                baseColor
                WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
            }.edgesIgnoringSafeArea(.all)
            
        case .systemMedium:
            ZStack {
                HStack(spacing: 0) {
                    Rectangle().fill(baseColor)
                    Rectangle().fill(darkColor)
                }
                HStack {
                    WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
                    WeatherView(weather: entry.weatherInfo[1], updatedDate: entry.date)
                        .foregroundColor(.white)
                }
            }.edgesIgnoringSafeArea(.all)
            
        case .systemLarge:
            VStack {
                ZStack {
                    HStack(spacing: 0) {
                        Rectangle().fill(baseColor)
                        Rectangle().fill(darkColor)
                    }
                    HStack {
                        WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
                        WeatherView(weather: entry.weatherInfo[1], updatedDate: entry.date)
                            .foregroundColor(.white)
                    }
                }
                VStack {
                    HStack {
                        VStack {
                            DailyWeatherView(weather: entry.weatherInfo[2])
                            DailyWeatherView(weather: entry.weatherInfo[3])
                        }
                        VStack {
                            DailyWeatherView(weather: entry.weatherInfo[4])
                            DailyWeatherView(weather: entry.weatherInfo[5])
                        }
                        VStack {
                            DailyWeatherView(weather: entry.weatherInfo[6])
                            DailyWeatherView(weather: entry.weatherInfo[7])
                        }
                        VStack {
                            DailyWeatherView(weather: entry.weatherInfo[8])
                            DailyWeatherView(weather: entry.weatherInfo[9])
                        }
                    }
                }
            }
        default:
            ZStack {
                baseColor
                WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
            }.edgesIgnoringSafeArea(.all)
        }
    }
}
