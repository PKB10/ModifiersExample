//
//  ContentView.swift
//  ModifiersExamples
//
//  Created by PKB10 on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // 1. Simple modifier
            Text("Just a Text view")
            .background(.red)
            
            // 2. Multiple simple modifiers
            Text("Just a Text view")
            .background(.gray)
            .cornerRadius(7)
            .padding()

            Text("Another Text view")
            .background(.gray)
            .cornerRadius(7)
            .padding()

            Text("Yet another Text view!")
            .background(.gray)
            .cornerRadius(7)
            .padding()
            
            // 3. Custom modifier by calling modifier()
            Text("Just a Text view")
            .modifier(ThreeInOne())

            Text("Another Text view")
            .modifier(ThreeInOne())

            Text("Yet another Text view!")
            .modifier(ThreeInOne())
            
            // 4. Custom modfier called like regular modifier
            Text("Just a Text view")
            .threeInOne()

            Text("Another Text view")
            .threeInOne()

            Text("Yet another Text view!")
            .threeInOne()
            
        }
        .padding()
    }
    
}



#Preview {
    ContentView()
}

// 3. Custom modifier
struct ThreeInOne: ViewModifier{
    func body(content: Content) -> some View
    {
        content
        .background(Color.blue)
        .cornerRadius(7)
        .padding()
    }
}

// 4. Extension to call custom modifier by name
extension View{
    func threeInOne() -> some View {
        self.modifier(ThreeInOne())
    }
}
