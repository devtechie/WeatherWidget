///**
/**

WeatherWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import Foundation

extension Date {
    func timeOnly() -> String {
        let fromDate = self
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter.string(from: fromDate)
    }
}
