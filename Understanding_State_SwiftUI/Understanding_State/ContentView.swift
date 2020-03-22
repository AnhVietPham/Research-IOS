//
//  ContentView.swift
//  Understanding_State
//
//  Created by PHAM ANH VIET on 3/22/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

/*:
 Xcode complain: Cannot assign to property: 'self' is immutable. That's because We are using struct ContentView and It is default immutable value/properties.
 We have two approach:
 1. Using mutating keyword in front of our func.
 2. Using @State keyword in front of our variable which we want to change value.
 */

import SwiftUI

struct ContentView: View {
    
    @State var myName = "Anh Viet Pham"
    
    var body: some View {
        VStack{
            Text(self.myName)
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: 40
            )
                .background(Color.green)
                .foregroundColor(Color.white)
                .padding(9)
            
            Button(
                action: {
                    self.changeMyName()
            },
                label: {Text("Switch")})
        }
        
        
    }
    
    
    
    
    //     The first approach. Using @State keyword.
    func changeMyName(){
        let listName = ["Anh Viet Pham", "Pham Anh Viet","Pham Le Huy Hoang","Pham Van Cuong","Le Thi Hoa",]
        myName = listName.randomElement() ?? ""
    }
    
    
    //    mutating func changeMyName(){
    //        let listName = ["Anh Viet Pham", "Pham Anh Viet","Pham Le Huy Hoang","Pham Van Cuong","Le Thi Hoa",]
    //        myName = listName.randomElement() ?? ""
    //    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
