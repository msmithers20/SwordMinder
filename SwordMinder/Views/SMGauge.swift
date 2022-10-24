//
//  SMGauge.swift
//  SwordMinder
//
//  Created by John Delano on 10/20/22.
//

import SwiftUI

struct SMGauge: View {
    var current: Double
    var minimum: Double
    var maximum: Double
    var imageName: String
    
    var body: some View {
        Gauge(value: current, in: minimum...maximum) {
            Image(systemName: imageName)
                .foregroundColor(.accentColor3)
            
        } currentValueLabel: {
            Text("\(current, specifier: "%.0f")")
        }
        .gaugeStyle(.accessoryCircular)
        .tint(Gradient(colors: [.accentColor, .accentColor3]))
    }
}
 
