//
//  VideoPlayer.swift
//  Reel&Stories
//
//  Created by Sidney MALEO on 01/03/2024.
//

import SwiftUI
import AVKit

struct VideoPlayer: UIViewControllerRepresentable {
    @Binding var avPlayer: AVPlayer?
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = avPlayer
        controller.videoGravity = .resizeAspectFill
        controller.showsPlaybackControls = false
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        uiViewController.player = avPlayer
    }
}
