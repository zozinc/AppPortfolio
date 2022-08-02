//
//  SettingView.swift
//  Avocados
//
//  Created by Andrii Zozulych on 21.08.2021.
//

import SwiftUI

struct SettingView: View {
    // MARK: - PROPERTIES
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // HEADER
            VStack(alignment: .center, spacing: 5){
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form{
                // SECTION #1
                Section(header: Text("General Setting")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("Background refresh")
                    })
                }
                // SECTION #2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack{
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack{
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack{
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Andrii Zozulych")
                        }
                        HStack{
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Andrii Zozulych")
                        }
                        HStack{
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    }
                    
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
