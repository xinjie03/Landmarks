//
//  LandmarkList.swift
//  Landmarks
//
//  Created by cycu on 2020/3/23.
//  Copyright © 2020 cycu. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
                List(landmarkData) { landmark in
                      NavigationLink(destination: landmarkDetail()) {
                          LandmarkRow(landmark: landmark)
                      }
                      
                  }
                 .navigationBarTitle(Text("landmarks"))
            }
        }
    }

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}




