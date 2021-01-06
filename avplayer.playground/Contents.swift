import AVFoundation
let url = URL(string: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/69/0e/98/690e98db-440d-cb0c-2bff-91b00a05bdda/mzaf_1674062311671795807.plus.aac.p.m4a")
let player = AVPlayer(url: url!)
player.play()
