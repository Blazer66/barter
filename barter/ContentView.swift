//
//  ContentView.swift
//  barter
//
//  Created by admin on 4/24/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Home()
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View{
    
    @State var index = 0
    var body: some View{
        
        VStack{
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 70, height: 70)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            HStack{
                Button(action: {
                    withAnimation(.spring()){}
                    index = 0
                    
                }){
                    VStack{
                        
                        Text("Login")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .black : .gray)
                        
                        Capsule()
                            .fill(Color("Color"))
                            .frame(height: 4)
                    }
                }
                
                
                Button(action: {
                    
                    withAnimation(.spring()){
                        
                        index = 0
                    }
                    
                }) {
                    
                    VStack{
                        
                        Text("Sign Up")
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(index == 1 ? .black: .gray)
                        
                        Capsule()
                            .fill(Color("Color"))
                            .frame(height: 4)
                    }
                }
            }
        }
        .padding(.top, 40)
        
    }
}

