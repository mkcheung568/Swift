//
//  ContentView.swift
//  slot-challenge
//
//  Created by Mikecheung on 8/6/2022.
//

import SwiftUI

struct ContentView: View {
    
   @State var credits = 1000
    @State var countBingo = 0
   @State var image_name:[String] = ["apple","cherry","star"]
    @State var image1 = "star"
   @State var image2 = "cherry"
    @State var image3 = "apple"
    
    
    
    
    var body: some View {
        
       
        
        VStack{
            
            Spacer()
            HStack {
                Text("SwiftUI Slots!").font(.largeTitle).multilineTextAlignment(.center)
            }
            Spacer()
            HStack {
                Text("Credits: \(credits)")
                
            }
            
            
            Spacer()
            HStack{
                Image(image1).resizable().aspectRatio(contentMode: .fit)
                    
    
                Image(image2).resizable().aspectRatio(contentMode: .fit)
                    
                    
                Image(image3).resizable().aspectRatio(contentMode: .fit)
                    
                
            }
            
            
            Spacer()
            Button(action:{
                
                 image1 = image_name.randomElement()!
                
                print("Image1:",image1)
                image2 = image_name.randomElement()!
                print("Image2:",image2)
                image3 = image_name.randomElement()!
                print("Image3:",image3)
                
                if (image1 == image2) && (image2 == image3) {
                    credits += 10
                    countBingo += 1
                    
                }else{
                    credits -= 10
                    
                }
                
             
                
                
                
            }) { Text("Spin")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.red, lineWidth: 5))
            }
                        
            Spacer()
            
           
        }
        Spacer()
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
