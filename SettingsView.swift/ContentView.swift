//
//  ContentView.swift
//  SettingsView.swift
//
//  Created by Daniel Wade Duggin on 11/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Display"),
                        footer: Text("System settings will override dark mode if toggled on. This will then use the device theme.")){
                    Toggle(isOn: .constant(false),
                           label: {
                        Text("Dark Mode")
                    })
                    
                    Toggle(isOn: .constant(false),
                           label: {
                        Text("Use System Settings")
                    })
                }
                Section{
                    Link(destination: URL(string: Constants.instagram)!,
                            label: {
                                Label("Follow us on instagram", systemImage: "link")
                    })
                   
                    Link("Contact us via email",
                         destination: URL(string: Constants.email)!)
                    
                    Link("Contact us via phone",
                         destination: URL(string: Constants.phone)!)
                   
                }
                .foregroundColor(.black)
                .font(.system(size: 16, weight: .semibold))
            }
            .navigationTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
