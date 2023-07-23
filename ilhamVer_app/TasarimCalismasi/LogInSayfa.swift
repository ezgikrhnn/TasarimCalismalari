//
//  LogInSayfa.swift
//  ilhamVer_app
//
//  Created by Ezgi Karahan on 23.07.2023.

/*

  
  💜💜💜💜💜💜 LOG IN SAYFA TASARIMI 💜💜💜💜💜
  
  
  ✅ Neler öğrendim?
  👉🏻 .textFieldStyle(RoundedBorderTextFieldStyle())  --> bir textField tasarım şeklidir.
  👉🏽 textfield padding() verilirse kenarlardan boşluk olur.
  👉🏻 .background(.indigo) --> morumsu, güzel bir renk.
  👉🏽  $ --> option + 4
 */

import SwiftUI

struct LogInSayfa: View {
    //textfield kısımları için 2 tane state değeri oluşturuyorum.
    @State private var tfKullanici = ""
    @State private var tfsifre = ""
    
    var body: some View {
        VStack (spacing: 50){
            
            Image("logo")
            
            TextField("Kullanıcı Adı", text: $tfKullanici)
                .textFieldStyle(RoundedBorderTextFieldStyle())  //bu bir tasarım şekli
                .padding() //textfield çevresine de biraz boşluk vemek faydalı.
            
            TextField("Şifre", text: $tfsifre)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Log In"){
                
            }.foregroundColor(.white)
                .padding()
                .background(.red)
                .cornerRadius(8)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)  //bulunduğu alan kadar kendisini yayması için infinity yapıyorum.
        .background(.indigo)
        
    }
}

struct LogInSayfa_Previews: PreviewProvider {
    static var previews: some View {
        LogInSayfa()
    }
}
