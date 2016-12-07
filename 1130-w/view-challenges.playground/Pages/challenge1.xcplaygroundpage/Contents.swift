
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 200, height: 200)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor
/*:
 **Task**: Add a `UIView` to the `canvas` that is half as wide and half as high as the `canvas`. This new `UIView` should be _centered_ on the canvas:
 
 ![Challenge 1](./challenge1.png "Challenge 1")

 1. Implement above task by setting the view's `frame` directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//// Implementation 1
//let redWidth = canvas.frame.size.width / 2
//let redHeight = canvas.frame.size.height / 2
//let marginX = redWidth / 2
//let marginY = redHeight / 2
//let redDim = CGRect(x: marginX, y: marginY, width: redWidth, height: redHeight)
//var redBox = UIView(frame: redDim)
//redBox.backgroundColor = .red
//
//canvas.addSubview(redBox)

// Implementation 2

let redBox = UIView(frame: canvasFrame)
redBox.backgroundColor = .red
let margin = canvas.frame.width / 4

NSLayoutConstraint(item: redBox, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 0.5, constant: 0)
NSLayoutConstraint(item: redBox, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 0.5, constant: 0)
NSLayoutConstraint(item: redBox, attribute: .leading, relatedBy: .equal, toItem: canvas, attribute: .leading, multiplier: 1, constant: margin)

canvas.addSubview(redBox)
