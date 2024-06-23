//
//  ContentView.swift
//  YemeklerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct Anasayfa: View {
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    var body: some View {
        VStack {
            NavigationStack{
                List{
                    ForEach(viewModel.yemeklerListesi){ yemek in
                        NavigationLink(destination: DetaySayfa(yemek: yemek)){
                            
                        }
                        YemekSatir(yemek: yemek)
                        
                    }
                    
                }.navigationTitle("Yemekler")
                    .onAppear{
                        viewModel.yemekleriYukle()
                    }
            }
        }
        
    }
}

#Preview {
    Anasayfa()
}
