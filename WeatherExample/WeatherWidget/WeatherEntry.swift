///**
/**

WeatherWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import WidgetKit
import SwiftUI

struct WeatherEntry: TimelineEntry {
    public let date: Date
    public let weatherInfo: [Weather]
     
    var relevance: TimelineEntryRelevance? {
        return TimelineEntryRelevance(score: 50)
    }
}
