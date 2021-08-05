//
//  ContentView.swift
//  DailyMinuteCountdownApp
//
//  Created by Jeremy Skjevling on 5/9/21.
//

import SwiftUI

func getCurrentMinutesRemaining () -> Int {
    let minutesInDay = 1440
    let date = Date()
    let calendar = Calendar.current
    let hour = calendar.component(.hour, from: date)
    let minutes = calendar.component(.minute, from: date)
    let totalMinutesPassed = (hour * 60) + minutes
    let minutesRemaining = minutesInDay - totalMinutesPassed
    print("calculating minutes: \(minutesRemaining)")
    return minutesRemaining
}

class TimerHolder : ObservableObject {
var timer : Timer!
@Published var count = getCurrentMinutesRemaining()
func start() {
    self.timer?.invalidate()
    self.count = getCurrentMinutesRemaining()
    self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
        _ in
        self.count = getCurrentMinutesRemaining()
        print(self.count)
    }
  }
}

struct ContentView: View {
    @ObservedObject var durationTimer = TimerHolder()
    var body: some View {
        Text("\(durationTimer.count)")
            .font(.system(size: 400.0))
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .lineLimit(600)
            .padding()
            .frame(width: 1000.0, height: 600.0)
            .onAppear {
                    self.durationTimer.start()
                  }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
