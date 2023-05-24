//
//  Home.swift
//  SlidingTabs
//
//  Created by Max Valek on 5/24/23.
//

import SwiftUI

struct Home: View {
    
    @State var currentTab: Tab = .one
    @Namespace var homeNamespace
    
    var body: some View {
        
        ZStack {
            // Background
            LinearGradient(colors: [Color.black, Color.purple.opacity(0.15), Color.white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            // Content
            VStack {
                
                // Top tab buttons
                tabButtons
                .padding([.horizontal, .top])
                
                Divider()
                
                // Swipeable content
                TabView(selection: self.$currentTab) {
                    GridView(item_data: sample_items)
                        .tag(Tab.one)
                    
                    GridView(item_data: sample_items)
                        .tag(Tab.two)
                    
                    GridView(item_data: sample_items)
                        .tag(Tab.three)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                Spacer()
            }
            .padding(.top)
            .preferredColorScheme(.dark)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension Home {
    private var tabButtons: some View {
        HStack(spacing: 0) {
            Spacer()
            ForEach(Tab.allCases, id: \.self) { tab in
                VStack(spacing: 8) {
                    Text(tab.title)
                        .font(.title2)
                        .foregroundColor(self.currentTab == tab ? .white : .white.opacity(0.5))
                        .fontWeight(.semibold)
                    
                    // Animated tab underline
                    if self.currentTab == tab {
                        Capsule()
                            .fill(.purple)
                            .frame(width: 50, height: 3)
                            .opacity(1)
                            .matchedGeometryEffect(id: "tab_underline", in: homeNamespace)
                    } else {
                        Capsule()
                            .fill(.purple)
                            .frame(width: 50, height: 3)
                            .opacity(0)
                    }
                }
                .onTapGesture {
                    withAnimation {
                        self.currentTab = tab
                    }
                }
                Spacer()
            }
        }
    }
}
