import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 100)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .blue, .red]

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have the canvas's full `height` as well as a third of its `width`. Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 3](./challenge3.png "Challenge 3")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
// Implementation 1


//let greenRect = CGRect(x: 0, y: 0, width: canvas.frame.size.width/3, height: canvas.frame.size.height)
//let greenView = UIView(frame: greenRect)
//  greenView.backgroundColor = colors[0]
//canvas.addSubview(greenView)
//
//let blueRect = CGRect(x: greenView.frame.maxX, y: 0, width: canvas.frame.size.width/3, height: canvas.frame.size.height)
//let blueView = UIView(frame: blueRect)
//  canvas.backgroundColor = colors[1]
//  canvas.addSubview(blueView)
//
//let redRect = CGRect(x: blueView.frame.maxX, y: 0, width: canvas.frame.size.width/3, height: canvas.frame.size.height)
//let redView = UIView(frame: redRect)
//redView.backgroundColor = colors[2]
//canvas.addSubview(redView)


//var views = [UIView]()
//for i in 0..<3 {
//
//  let x = CGFloat(i) * (canvas.frame.size.width / 3)
//  let frame = CGRect(x: x, y: 0, width: canvas.frame.size.width/3, height: canvas.frame.size.height)
//  let view = UIView(frame: frame)
//  view.backgroundColor = colors[i]
//  views.append(view)
//  canvas.addSubview(view)
//}

// views[1]

// Implementation 2

// Block 1

var views = [UIView]()
for i in 0..<3 {

  let x = CGFloat(i) * (canvas.frame.size.width / 3)
  let view = UIView(frame: CGRect.zero)
  view.translatesAutoresizingMaskIntoConstraints = false
  view.backgroundColor = colors[i]
  canvas.addSubview(view)
  
  
  let margin: CGFloat = 0
  NSLayoutConstraint(item: view, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true
  NSLayoutConstraint(item: view, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
  NSLayoutConstraint(item: view, attribute: .leading, relatedBy: .equal, toItem: canvas, attribute: .leading, multiplier: 1, constant: x).isActive = true
  NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: 0).isActive = true
  NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
//  view.backgroundColor = colors[i]
  views.append(view)

}
