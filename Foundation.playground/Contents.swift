//import Foundation
//var time = Date()
//print(time)
//time.addTimeInterval(13820)
//print(time)
/*https://medium.com/%E5%BD%BC%E5%BE%97%E6%BD%98%E7%9A%84-swift-ios-app-%E9%96%8B%E7%99%BC%E6%95%99%E5%AE%A4/42-%E5%88%A9%E7%94%A8-ios-sdk-%E5%90%84%E5%BC%8F%E5%9E%8B%E5%88%A5%E7%94%9F%E6%88%90%E6%9D%B1%E8%A5%BF-%E8%A8%AD%E5%AE%9A%E5%AE%83%E7%9A%84%E5%B1%AC%E6%80%A7%E5%92%8C%E5%91%BC%E5%8F%AB%E6%96%B9%E6%B3%95-63e9366b2ad5
*/

import AVFoundation
let speechUtterance =  AVSpeechUtterance(string: "乾脆一點")
speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
speechUtterance.rate = 0.5
speechUtterance.pitchMultiplier = 1
let synthesizer = AVSpeechSynthesizer()
synthesizer.speak(speechUtterance)
