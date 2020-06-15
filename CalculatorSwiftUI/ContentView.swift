//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by 神村亮佑 on 2020/06/15.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("消費税計算アプリ")
            Calculator()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Calculator: View {
    @State var price = ""
    @State var total = 0.0
    @State var tax = ""
    @State var final = 0
    
    
    var body: some View{
        Form{
            Section(header: Text("食費")){
                
                TextField("価格[円]",text: $price).keyboardType(.numberPad)
                Spacer()
                TextField("消費税[%]",text: $tax).keyboardType(.numberPad)
                Spacer()

                Button(action: {
                    
                    self.total = Double(self.price)! + Double(self.price)! * Double(self.tax)! / 100
                    self.final = Int(self.total)
                }){
                    Text("確定")
                }
                Text("\(self.final)円")
                
            }
        }
    }
}
