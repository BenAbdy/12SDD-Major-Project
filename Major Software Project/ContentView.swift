//
//  ContentView.swift
//  Major Software Project
//
//  Created by Benjamin Abdy on 6/3/2023.
//

import SwiftUI

struct patientView: View {
    @State private var patientName =  ""
    @State private var patientAge = ""
    @State private var patientGender = ""
    @State private var patientIllness = ""
    @State private var patientAddress = ""
    @State private var patientAllergies = ""
    
    var body: some View {
        VStack {
            patientPhoto()
            Text("Ben Abdy")
                .font(.title)
            Text("Age:")
                .underline()
                .font(.title2)
                .padding()
            Text("Gender:")
                .underline()
                .font(.title2)
                .padding()
            Text("Illness:")
                .underline()
                .font(.title2)
                .padding()
            Text("Address:")
                .underline()
                .font(.title2)
                .padding()
            Text("Allergies:")
                .underline()
                .font(.title2)
                .padding()
        }
        Spacer()
    }
}

struct doctorView: View {
    @State private var doctorName = ""
    @State private var doctorPhone = ""
    @State private var doctorEmail = ""
    
    var body: some View {
        VStack {
            Text("Toby Trahair")
                .font(.title)
            Text("Phone:")
                .underline()
                .font(.title2)
                .padding()
            Text("Email:")
                .underline()
                .font(.title2)
                .padding()
        }
        Spacer()
    }
}

struct GPView: View {
    @State private var GPName = ""
    @State private var GPPhone = ""
    @State private var GPEmail = ""
    
    var body: some View {
        VStack {
            Text("Pauline Hector")
                .font(.title)
            Text("Phone:")
                .underline()
                .font(.title2)
                .padding()
            Text("Email:")
                .underline()
                .font(.title2)
                .padding()
        }
        Spacer()
    }
}

struct emergencyView: View {
    @State private var emergencyName = ""
    @State private var emergencyPhone = ""
    @State private var emergencyAddress = ""
    
    var body: some View {
        VStack {
            Text("Campbelltown Emergency Department")
                .font(.title)
            Text("Phone:")
                .underline()
                .font(.title2)
                .padding()
            Text("Address:")
                .underline()
                .font(.title2)
                .padding()
        }
        Spacer()
    }
}

struct parentsView: View {
    @State private var motherName = ""
    @State private var motherPhone = ""
    @State private var fatherName = ""
    @State private var fatherPhone = ""
    
    var body: some View {
        VStack {
            Text("Mother - Caralyn Abdy").fontWeight(.bold)
                .font(.title)
                .padding()
            Text("Phone:")
                .underline()
                .font(.title2)
                .padding()
            Text("Father - Mathew Abdy").fontWeight(.bold)
                .font(.title)
                .font(.title2)
                .padding()
            Text("Phone:")
                .underline()
                .font(.title2)
                .padding()
        }
        Spacer()
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            Text("My Treatment Plan")
                .font(.title)
                .padding(10)
            NavigationView {
                VStack {
                    NavigationLink(destination: patientView()){
                        Text("Ben Abdy")
                    }
                    .padding(.bottom)
                    Spacer()
                    VStack {
                        NavigationLink(destination: doctorView()){
                            Text("Doctor")
                        }
                        .padding(.top)
                        
                        NavigationLink(destination: GPView()){
                            Text("General Practitioner")
                        }
                        .padding(.top)
                        
                        NavigationLink(destination: emergencyView()){
                            Text("Emergency Ward")
                        }
                        .padding(.top)
                        
                        NavigationLink(destination: parentsView()){
                            Text("Parents")
                        }
                        .padding(.top)
                        Spacer()
                    }
                }
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
