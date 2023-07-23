//
//  ilhamVerSayfa.swift
//  ilhamVer_app
//
//  Created by Ezgi Karahan on 23.07.2023.
//
/*
 
 💜💜💜💜💜💜 İLHAM VER UYGULAMA TASARIMI 💜💜💜💜💜
 
 
 ✅ Neler öğrendim?
 👉🏻 multilineTextAlignmtn(.center) --> yazıyı merkezliyor.
 👉🏽 buttona padding() verilirse iç boşluk olur.
 👉🏻 cornerRadius() 
 
 */
import SwiftUI

struct ilhamVerSayfa: View {
    var body: some View {
        VStack(spacing: 100){
            VStack{
                Image("stevejobs")
                Text("Steve Jobs")
                    .font(.system(size: 22))
                    .foregroundColor(.red)
                    .bold()
            }
            Text("Dünyayı değiştirecek insanlar onu değiştireceklerini düşenecek kadar çılgın olanlardır.").multilineTextAlignment(.center) //yazıyı merkezleyecek
                .padding() //kırmızı textle arasına boşluk koydu.
            
            Button("İLHAM VER") {
                
            }.foregroundColor(.white)
                .padding() //butonun içindeki boşluk olacak
                .background(.red)
                .cornerRadius(8)
            
        }
    }
}

struct ilhamVerSayfa_Previews: PreviewProvider {
    static var previews: some View {
        ilhamVerSayfa()
    }
}
