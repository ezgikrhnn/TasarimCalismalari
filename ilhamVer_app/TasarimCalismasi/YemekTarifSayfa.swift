//
//  YemekTarifSayfa.swift
//  ilhamVer_app
//
//  Created by Ezgi Karahan on 23.07.2023.
/*
 💜💜💜💜💜💜 YEMEK TARİFİ SAYFA TASARIMI 💜💜💜💜💜
 
 
 ✅ Neler öğrendim?
 👉🏻 GeometryReader  --> kullanıcı arayüzlerinin boyutlarını istediğimiz gibi tanımlamamızı sağlar.

 👉🏽 textfield padding() verilirse kenarlardan boşluk olur.
 
 👉🏻 .background(.indigo) --> morumsu, güzel bir renk.
 
 👉🏽  $ --> option + 4
 */

import SwiftUI

struct YemekTarifSayfa: View {
    var body: some View {
        GeometryReader{ geometry in //Geometry ismini kendim verdim.
            
            let ekranGenislik = geometry.size.width
            let ekranYukseklik = geometry.size.height
            
            
            //genel olarak arayüz alt alta olduğu için VStack oluşturuyorum.
            VStack{
                Image("yemekresim").resizable().frame(width: ekranGenislik, height: ekranYukseklik/3)
                
                VStack(alignment: .leading){ //köfte ve altındaki yazo alt alta olduğu için VStack
                    Text("Köfte").font(.system(size: 30))
                    
                    HStack { // 2 tane yanyana text olduğu için HStack
                        Text("Izgaraya Uygun")
                        Spacer() //textler arasında boşluk bırakıyorum.
                        Text("10 Ocak")
                    }
                }.padding()  // vstack kenarlardan boşluk bırakır.
                
                Text("Köfte harcını hazırlamak için soğanları rendeleyin ve maydonozları ince ince kıyın. İsterseniz, bir diş sarımsak da ekleyebilirsiniz.").multilineTextAlignment(.center)//yazıyı ortaladım.
                    .padding([.leading, .trailing], 20)
                
                
                //text-hstack arasına boşluk atarsam, butonlar aşağıya inecek. spacer kullandım.
                Spacer()
                
                //butonlar yanyana olduğu için hstack:
                HStack(spacing:0){
                    Button("Beğen"){
                        
                    }.foregroundColor(.black)
                        .frame(width: ekranGenislik/2, height: ekranYukseklik/10)
                        .background(.yellow)
                    
                    Button("Yorum yap"){
                        
                    }.foregroundColor(.black)
                        .frame(width: ekranGenislik/2, height: ekranYukseklik/10)
                        .background(.orange)
                }
            }
            
            
        }
    }
}

struct YemekTarifSayfa_Previews: PreviewProvider {
    static var previews: some View {
        YemekTarifSayfa()
    }
}
