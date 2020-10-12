//
//  ContentView.swift
//  Found my Phone
//
//  Created by student on 10/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var yesShowing = false
    @State private var noShowing = false
    
    var body: some View {
        VStack{
            Text("Hey, did you find this phone randomly?")
                .padding()
            Button("Yes"){
                self.yesShowing.toggle()
            }.padding()
            .sheet(isPresented: $yesShowing){
                Text("maybe give it back to the guy who dropped it, just ship it to his address: 123 calender lane")
            }
            Button("No"){
                self.noShowing.toggle()
            }.padding()
            .sheet(isPresented: $noShowing){
                Text("hey uhh, why are you looking at this me? go look at reddit or something")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
