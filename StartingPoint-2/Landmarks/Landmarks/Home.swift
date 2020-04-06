//
//  Home.swift
//  Landmarks
//
//  Created by cycu on 2020/4/6.
//  Copyright © 2020 Apple. All rights reserved.
//


//var myArray1: Array<String>
//var myArray2: [String]
//var myDict1: Dictionary<String, Int>
//var myDict2:[String, Int]


import SwiftUI

struct CategoryHome: View {
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categories.keys.sorted(), id: \.self){ key in
                    Text(key)
                    
                }
            }
            .navigationBarTitle(Text("Featured"))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}

