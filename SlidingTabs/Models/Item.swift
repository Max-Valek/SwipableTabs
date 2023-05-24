//
//  Item.swift
//  SlidingTabs
//
//  Created by Max Valek on 5/24/23.
//

import Foundation

/// Model to represent a grid item
struct Item: Identifiable {
    var id: Int
    var title: String
    var image: String
    var data: String
    var caption: String
}

// Sample data
var sample_items: [Item] = [
    Item(id: 0, title: "Title", image: "chart.line.uptrend.xyaxis", data: "Data", caption: "01/01/24\nDate"),
    Item(id: 1, title: "Title", image: "ellipsis.curlybraces", data: "Data", caption: "In Progress\nStatus"),
    Item(id: 2, title: "Title", image: "heart", data: "Data", caption: "5.0\nRating"),
    Item(id: 3, title: "Title", image: "figure.run", data: "Data", caption: "Good\nStatus"),
    Item(id: 4, title: "Title", image: "tv", data: "Data", caption: "4.5\nRating"),
    Item(id: 5, title: "Title", image: "banknote", data: "Data", caption: "$1,000\nBalance"),
]
