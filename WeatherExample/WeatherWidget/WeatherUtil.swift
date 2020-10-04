///**
/**

WeatherWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct WeatherUtils {
    static func getWeatherIcon(conditionString: String) -> String {
        let current = conditionString.lowercased()
        switch current {
        case _ where current.contains("partly sunny"):
            return "🌤"
        case _ where current.contains("cloudy"):
            return "☁️"
        case _ where current.contains("drizzle"):
            return "🌧"
        case _ where current.contains("sunny"):
            return "🌤"
        case _ where current.contains("clear"):
            return "☀️"
        default:
            return "🚫"
        }
    }
}
