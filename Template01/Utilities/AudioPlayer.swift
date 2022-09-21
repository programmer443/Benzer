//
//  AudioPlayer.swift
//  Template01
//
//  Created by Muhammad Ahmad on 21/09/2022.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            print("[+] playerd")
        }
        catch {
            print("[-] Could not play sound")
        }
    }
}
