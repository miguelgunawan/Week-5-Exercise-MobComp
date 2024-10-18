//
//  ContentView.swift
//  Week 5
//
//  Created by student on 18/10/24.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    let flags = [
        "🇺🇸": "United States",
        "🇮🇩": "Indonesia",
        "🇬🇧": "United Kingdom",
        "🇯🇵": "Japan",
        "🇫🇷": "France",
        "🇩🇪": "Germany",
        "🇧🇷": "Brazil",
        "🇨🇦": "Canada",
        "🇦🇺": "Australia",
        "🇮🇹": "Italy",
        "🇪🇸": "Spain",
        "🇷🇺": "Russia",
        "🇨🇳": "China",
        "🇮🇳": "India",
        "🇿🇦": "South Africa",
        "🇰🇷": "South Korea",
        "🇲🇽": "Mexico",
        "🇳🇱": "Netherlands",
        "🇸🇪": "Sweden",
        "🇳🇴": "Norway"
    ]
    
    @State private var currentFlag = "🇮🇩"
    
    var body: some View {
        VStack {
            Text(currentFlag)
                .font(.system(size: 300))
                .padding()
            
            Button(action: {
                currentFlag = flags.keys.randomElement() ?? "🇮🇩"
            }) {
                Text("GO !!")
                    .font(.title)
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }
            .padding()
            
            // displaying nama negara
            Text(flags[currentFlag]!)
                .font(.largeTitle)
                .padding()
        }
    }
}


#Preview {
    ContentView()
}
