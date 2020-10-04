///**
/**

WeatherWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import WidgetKit
import SwiftUI

struct WeatherTimeline: TimelineProvider {
    typealias Entry = WeatherEntry
    
    func placeholder(in context: Context) -> WeatherEntry {
        var weatherSnap = [Weather]()
        
        for i in 0...9 {
            weatherSnap.append(Weather(name: "SF Day\(i)", temperature: 10 * i, unit: "F", description: "Cloudy"))
        }
        
        let entry = WeatherEntry(date: Date(), weatherInfo: weatherSnap)
        
        return entry
    }
    
    func getSnapshot(in context: Context, completion: @escaping (WeatherEntry) -> Void) {
        var weatherSnap = [Weather]()
        
        for i in 0...9 {
            weatherSnap.append(Weather(name: "SF Day\(i)", temperature: 10 * i, unit: "F", description: "Cloudy"))
        }
        
        let entry = WeatherEntry(date: Date(), weatherInfo: weatherSnap)
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<WeatherEntry>) -> Void) {
        let currentDate = Date()
        let refreshDate = Calendar.current.date(byAdding: .minute, value: 15, to: currentDate)!
        
        WeatherSevice().getWeather { (result) in
            let weatherInfo: [Weather]
            
            if case .success(let fetchedData) = result {
                weatherInfo = fetchedData
            } else {
                let errWeather = Weather(name: "SF", temperature: 0, unit: "F", description: "Error getting weather info")
                weatherInfo = [errWeather, errWeather]
            }
            
            let entry = WeatherEntry(date: currentDate, weatherInfo: weatherInfo)
            let timeline = Timeline(entries: [entry], policy: .after(refreshDate))
            completion(timeline)
        }
    }
}
