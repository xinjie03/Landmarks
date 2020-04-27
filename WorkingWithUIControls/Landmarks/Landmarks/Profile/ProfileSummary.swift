//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by cycu on 2020/4/13.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    
    //let表示變數不變, let count = 30 不宜
    static let goalFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()
    
    var body: some View {
        List {
            Text(profile.username)
                .bold()
                .font(.title)
            
            Text("Notification: \(profile.prefersNotifications ? "On" : "Off")")
            
            Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
            
            Text("Goal Date: \(profile.goalDate, formatter: Self.goalFormat)")
            //Self= ProfileSummary
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
