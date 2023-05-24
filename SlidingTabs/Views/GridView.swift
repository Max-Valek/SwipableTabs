//
//  GridView.swift
//  SlidingTabs
//
//  Created by Max Valek on 5/24/23.
//

import SwiftUI

struct GridView: View {
    
    var item_data: [Item]
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            LazyVGrid(columns: columns, spacing: 30) {
                
                ForEach(item_data) { item in
                    
                    // Item
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text(item.title)
                                .foregroundColor(.white)
                            
                            Text(item.data)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top, 10)
                            
                            HStack {
                                
                                Text(item.caption)
                                    .foregroundColor(.white)
                                
                                Spacer()
                            }
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                        .shadow(color: Color.white.opacity(0.15), radius: 5, x: 0, y: 5)
                        
                        Image(systemName: item.image)
                            .renderingMode(.template)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.white.opacity(0.35))
                            .clipShape(Circle())
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top, 25)
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(item_data: sample_items)
            .preferredColorScheme(.dark)
    }
}
