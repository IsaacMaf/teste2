//
//  IngredientsSelectionView.swift
//  Namassa
//
//  Created by found on 14/02/25.
//

import SwiftUI

struct IngredientsSelectionView: View {
    @State var ingredientType: String
    
    var body: some View {
        VStack {
            Text("Monte seu prato")
                .font(.system(size: 30))
                .frame(maxWidth: .infinity, alignment: .leading)
                .bold()
                .padding(.leading, 50)
                .padding(.bottom, 40)
            
            Text("\u{2022} Selecione os carboidratos")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.bottom, 20)
            
            
            VStack(spacing: 15) {
                HStack(spacing:15){
                    IngredientRect(text: "Pão")
                    IngredientRect(text: "Arroz")
                    IngredientRect(text: "Macarrão")
                }
                HStack(spacing:15){
                    IngredientRect(text: "Batata")
                    IngredientRect(text: "Banana")
                    IngredientRect(text: "Cereais")
                }
            }.padding(.bottom, 25)
            
            
            Text("\u{2022} Qual o tipo?")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.bottom, 20)
            
            HStack {
                TextField("Digite aqui..." ,text: $ingredientType)
                    .padding(.leading, 25)
                Image(systemName: "magnifyingglass")
                    .padding(.trailing, 20)
            }
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 380, height: 1)
                .padding(.bottom)
            
            ScrollView {
                ForEach(1..<20) { _ in
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 339, height: 30)
                        .foregroundColor(Color(hex:"CDCDCD"))
                }
            }
            .scrollIndicators(.hidden)
            .frame(height: 200)
            
            
            Spacer()
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 193, height: 70)
                    .foregroundColor(Color(hex: "E3A09F"))
                Text("Próxima")
                    .fontWeight(.semibold)
                    .font(.system(size: 34))
            }.padding(.bottom, 40)
            
            
            Text("TOOLBAR")
        }
    }
}

struct IngredientRect: View {
    let text: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 113, height: 61)
                .foregroundColor(Color(hex: "E3A09F"))
            Text(text)
                .fontWeight(.medium)
                .font(.system(size: 24))
        }
    }
}

#Preview {
    IngredientsSelectionView(ingredientType: "")
}
