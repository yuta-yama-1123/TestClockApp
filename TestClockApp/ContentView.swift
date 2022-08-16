//
//  ContentView.swift
//  TestClockApp
//
//  Created by 山本祐太 on 2022/08/16.
//

import SwiftUI

struct ContentView: View {
    @State var dispYear = ""
    @State var dispMonth = ""
    @State var dispDate = ""
    @State var dispDOW = ""
    @State var dispHour = ""
    @State var dispMinute = ""
    @State var dispSecond = ""
    @State var nowDate = Date()
    private let dateFormatterYear = DateFormatter()
    private let dateFormatterMonth = DateFormatter()
    private let dateFormatterDate = DateFormatter()
    private let dateFormatterHour = DateFormatter()
    private let dateFormatterMinute = DateFormatter()
    private let dateFormatterSecond = DateFormatter()
    private let dateFormatterDOW = DateFormatter()
    init() {
        dateFormatterYear.dateFormat = "YYYY"
        dateFormatterYear.locale = Locale(identifier: "en_jp")
        dateFormatterMonth.dateFormat = "MMM"
        dateFormatterMonth.locale = Locale(identifier: "en_jp")
        dateFormatterDate.dateFormat = "dd"
        dateFormatterDate.locale = Locale(identifier: "en_jp")
        dateFormatterDOW.dateFormat = "E"
        dateFormatterDOW.locale = Locale(identifier: "en_jp")
        dateFormatterHour.dateFormat = "HH"
        dateFormatterHour.locale = Locale(identifier: "en_jp")
        dateFormatterMinute.dateFormat = "mm"
        dateFormatterMinute.locale = Locale(identifier: "en_jp")
        dateFormatterSecond.dateFormat = "ss"
        dateFormatterSecond.locale = Locale(identifier: "en_jp")
    }
    var body: some View {
        VStack {
            HStack {
                Text(dispYear.isEmpty ? "\(dateFormatterYear.string(from: nowDate))" : dispYear)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                            self.nowDate = Date()
                            dispYear = "\(dateFormatterYear.string(from: nowDate))"
                        }
                    }
                    .font(
                        .system(
                            size: 30,
                            weight: .light,
                            design: .rounded
                        )
                    )
                    .padding()
                Text(dispMonth.isEmpty ? "\(dateFormatterMonth.string(from: nowDate))" : dispMonth)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                            self.nowDate = Date()
                            dispMonth = "\(dateFormatterMonth.string(from: nowDate))"
                        }
                    }
                    .font(
                        .system(
                            size: 30,
                            weight: .light,
                            design: .rounded
                        )
                    )
                    .padding()
            }
            HStack {
                Text(dispDate.isEmpty ? "\(dateFormatterDate.string(from: nowDate))" : dispDate)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                            self.nowDate = Date()
                            dispDate = "\(dateFormatterDate.string(from: nowDate))"
                        }
                    }
                        .font(
                            .system(
                                size: 40,
                                weight: .heavy,
                                design: .rounded
                            )
                        )
                        .padding()
                Text(dispDOW.isEmpty ? "\(dateFormatterDOW.string(from: nowDate))" : dispDOW)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                            self.nowDate = Date()
                            dispDOW = "\(dateFormatterDOW.string(from: nowDate))"
                        }
                    }
                        .font(
                            .system(
                                size: 40,
                                weight: .heavy,
                                design: .rounded
                            )
                        )
                        .padding()
                
            }.padding(
                EdgeInsets(
                    top: 1,        // 上の余白
                    leading: 1,    // 左の余白
                    bottom: -40,     // 下の余白
                    trailing: 1    // 右の余白
                )
            )
            .offset(y: -40)
            Text(dispHour.isEmpty ? "\(dateFormatterHour.string(from: nowDate))" : dispHour)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                        self.nowDate = Date()
                        dispHour = "\(dateFormatterHour.string(from: nowDate))"
                    }
                }
                .font(
                    .system(
                        size: 240,
                        weight: .heavy,
                        design: .rounded
                    )
                )
                .padding(
                    EdgeInsets(
                        top: 1,        // 上の余白
                        leading: 1,    // 左の余白
                        bottom: -80,     // 下の余白
                        trailing: 1    // 右の余白
                    )
                )
                .offset(y: -70)
            Text(dispMinute.isEmpty ? "\(dateFormatterMinute.string(from: nowDate))" : dispMinute)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                        self.nowDate = Date()
                        dispMinute = "\(dateFormatterMinute.string(from: nowDate))"
                    }
                }
                .font(
                    .system(
                        size: 240,
                        weight: .heavy,
                        design: .rounded
                    )
                )
                .padding(
                    EdgeInsets(
                        top: 1,        // 上の余白
                        leading: 1,    // 左の余白
                        bottom: -80,     // 下の余白
                        trailing: 1    // 右の余白
                    )
                )
                .offset(y: -70)
            Text(dispSecond.isEmpty ? "\(dateFormatterSecond.string(from: nowDate))" : dispYear)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
                        self.nowDate = Date()
                        dispYear = "\(dateFormatterSecond.string(from: nowDate))"
                    }
                }
                .font(
                    .system(
                        size: 240,
                        weight: .heavy,
                        design: .rounded
                    )
                )
                .padding(
                    EdgeInsets(
                        top: 1,        // 上の余白
                        leading: 1,    // 左の余白
                        bottom: -80,     // 下の余白
                        trailing: 1    // 右の余白
                    )
                )
                .offset(y: -70)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
