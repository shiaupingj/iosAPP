//
//  ContentView.swift
//  circularprogressring
//
//  Created by shiau on 2021/1/11.
//


import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        
        let aDegree = CGFloat.pi / 180
        let lineWidth: CGFloat = 20
        let radius: CGFloat = 50
        let startDegree: CGFloat = 270
        let circlePath = UIBezierPath(ovalIn: CGRect(x: lineWidth, y: lineWidth, width: radius*2, height: radius*2))
        let circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.strokeColor = UIColor.gray.cgColor
        circleLayer.lineWidth = lineWidth
        circleLayer.fillColor = UIColor.clear.cgColor
        let percentage: CGFloat = 60
        let percentagePath = UIBezierPath(arcCenter: CGPoint(x: lineWidth + radius, y: lineWidth + radius), radius: radius, startAngle: aDegree * startDegree, endAngle: aDegree * (startDegree + 360 * percentage / 100), clockwise: true)
        let percentageLayer = CAShapeLayer()
        percentageLayer.path = percentagePath.cgPath
        percentageLayer.strokeColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1).cgColor
        percentageLayer.lineWidth = lineWidth
        percentageLayer.fillColor = UIColor.clear.cgColor
        let label = UILabel(frame: CGRect(x: 0, y: 0, width:2*(radius+lineWidth), height: 2*(radius+lineWidth)))
        label.textAlignment = .center
        label.text = "\(percentage)%"
        let view = UIView(frame: label.frame)
        percentageLayer.lineCap = .round
        view.layer.addSublayer(circleLayer)
        view.layer.addSublayer(percentageLayer)
        view.addSubview(label)
        
        
        /*let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 100, y: 0))
        path.addLine(to: CGPoint(x: 100, y: 100))
        path.close()
        let triangleLayer = CAShapeLayer()
        triangleLayer.path = path.cgPath
        let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        let view = UIView(frame: frame)
        view.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        view.layer.mask = triangleLayer
         */
        //view
        
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
