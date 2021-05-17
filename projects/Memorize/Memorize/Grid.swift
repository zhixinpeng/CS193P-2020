//
//  Grid.swift
//  Memorize
//
//  Created by 彭智鑫 on 2021/4/20.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    private var items: [Item]
    private var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        GeometryReader { geometry in
            let layout = GridLayout(itemCount: items.count, in: geometry.size)
            
            ForEach(items){ item in
                Group {
                    if let index = items.firstIndex(matching: item) {
                        viewForItem(item)
                            .frame(width: layout.itemSize.width, height: layout.itemSize.height)
                            .position(layout.location(ofItemAt: index))
                    }
                }
            }
        }
    }
}
