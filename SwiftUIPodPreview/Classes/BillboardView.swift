//
//  BillboardView.swift
//  SwiftUIPodPreview
//
//  Created by Gerson Costa on 23/10/2024.
//

import SwiftUI

struct CallToActionItem {
    let buttonText: String
    let buttonURL: String
    let title: String
    let subtitle: String
    let backgroundColor: Color
}

struct CallToActionBannerView: View {
    
    let ctaItem: CallToActionItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(ctaItem.title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom)
            Text(ctaItem.subtitle)
                .font(.subheadline)
                .padding(.bottom)
            Button(ctaItem.buttonText) {
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .buttonStyle(.borderedProminent)
            .tint(Color(uiColor: .systemGray5))
            .foregroundStyle(.black)
            .font(.headline)
        }
        .padding()
        .background(
            LinearGradient(
                colors: [ctaItem.backgroundColor.opacity(0.7), ctaItem.backgroundColor],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .mask(RoundedRectangle(cornerRadius: 10))
        .foregroundStyle(.white)
    }
}

#Preview {
    CallToActionBannerView(
        ctaItem: CallToActionItem(
            buttonText: "Press the button",
            buttonURL: "#",
            title: "Call to Action banner",
            subtitle: "A slightly shorter version of the Billboard component that can be used to highlight something. It has a button instead of the banner itself being clickable.",
            backgroundColor: Color(uiColor: #colorLiteral(red: 0.1880275905, green: 0.3582619727, blue: 0.5895228982, alpha: 1))
        )
    )
}


