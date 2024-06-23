//
//  DetaySayfa.swift
//  YemeklerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct DetaySayfa: View {
    var yemek = Yemekler()
    var body: some View {
        VStack(spacing: 100){
            Image(yemek.yemek_resim_adi!)
                .resizable()
                .frame(width: 200, height: 200)
            Text("\(yemek.yemek_fiyat!) ₺").font(.system(size: 50)).foregroundColor(.blue)
            
            Button("Sipariş Ver"){
                print("sipariş verildi")
            }.foregroundColor(.white)
                .frame(width: 200, height: 50)
                .background(.blue)
                .cornerRadius(10)
            
        }.navigationTitle(yemek.yemek_adi!)
    }
}

/*#Preview {
    DetaySayfa()
}
*/
