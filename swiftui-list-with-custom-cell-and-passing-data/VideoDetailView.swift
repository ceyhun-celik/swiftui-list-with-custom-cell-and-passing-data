//
//  VideoDetailView.swift
//  swiftui-list-with-custom-cell-and-passing-data
//
//  Created by Ceyhun Çelik on 11.02.2023.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    
    var body: some View {
        VStack(spacing: 20, content: {
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40, content: {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            })
            
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
                
            Link(destination: video.url, label: {
                StandardButton(title: "Watch Now")
            })
        })
    }
}

struct StandardButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .bold()
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}
