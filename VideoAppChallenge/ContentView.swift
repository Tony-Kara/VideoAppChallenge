//
//  ContentView.swift
//  VideoAppChallenge
//
//  Created by mac on 10/29/21.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        
        let url = URL(string: Constants.videohostUrl + "upload.mp4")
        
        VStack(alignment: .leading, spacing: 10.0) {
            
            if let urlString = url {
                VideoPlayer(player: AVPlayer(url: urlString))
                    .cornerRadius(10)
                    .padding()
            }
            
            Text("Description")
                .font(.title)
                .padding(.leading)
                
            
            Text("Labels and button has intrinsic values, so height and width is dertermined by the text font and size, ensure that you maintain the same height and fony size for all your buttons and labels, UIVIEW is not intrinsic in nature, so the constraits can be dertermined by the subviews present in it, if there are no subviews when it is created, you need to add both height and width. Do not add height for imageview as it changes with the phone screen size")
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
