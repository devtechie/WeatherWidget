///**
/**

WeatherWidgetExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/25/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct PlaceholderView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1))
            VStack (alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white).frame(width: 80, height: 20)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white).frame(width: 80, height: 20)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white).frame(width: 80, height: 20)
            }.padding()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct PlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderView()
    }
}
