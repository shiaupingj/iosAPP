import AVKit
import PlaygroundSupport
let url = URL(string: "https://bit.ly/2IRLp6O")
let player = AVPlayer(url: url!)
let controller = AVPlayerViewController()
controller.player = player
PlaygroundPage.current.liveView = controller
player.play()
