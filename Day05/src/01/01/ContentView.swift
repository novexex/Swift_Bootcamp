//
//  ContentView.swift
//  01
//
//  Created by Artour Ilyasov on 19.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("mint_chicken")
                    .resizable()
                    .frame(width: 360, height: 360)
                    .cornerRadius(30)
                Text("Mint Chicken")
                    .font(.system(size: 20, weight: .bold))
                    .padding(5)
                Text("Step 1\nIn a medium bowl, mix together the chicken pieces and garlic. Toss with the flour just to coat, and shake off excess.")
                    .font(.system(size: 18))
                    .padding()
                    .padding(.top, -15)
                Text("Step 2\nHeat the margarine in a large skillet over medium-high heat. Add the chicken pieces; cook and stir until browned. Add the mint leaves and lemon juice, cover and steam for about 5 minutes, just until the chicken is cooked through. Do not over cook the chicken or it will be tough.")
                    .font(.system(size: 18))
                    .padding()
                    .padding(.top, -20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
