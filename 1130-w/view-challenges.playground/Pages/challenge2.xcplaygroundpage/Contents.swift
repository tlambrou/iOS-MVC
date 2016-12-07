
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have a third of the `canvas`' `width` and `height`.
 
 
 ![Challenge 2](./challenge2.png "Challenge 2")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//// Implementation 1
//// Red 1
//let redDim1 = CGRect(x: canvas.frame.minX, y: canvas.frame.minY, width: canvas.frame.size.width / 3, height: canvas.frame.size.height / 3)
//let redBox1 = UIView(frame: redDim1)
//redBox1.backgroundColor = .red
//canvas.addSubview(redBox1)
//
//// Red 2
//let redDim2 = CGRect(x: redBox1.frame.maxX, y: redBox1.frame.maxY, width: canvas.frame.size.width / 3, height: canvas.frame.size.height / 3)
//let redBox2 = UIView(frame: redDim2)
//redBox2.backgroundColor = .red
//canvas.addSubview(redBox2)
//
//// Red 3
//let redDim3 = CGRect(x: redBox2.frame.maxX, y: redBox2.frame.maxY, width: canvas.frame.size.width / 3, height: canvas.frame.size.height / 3)
//let redBox3 = UIView(frame: redDim3)
//redBox3.backgroundColor = .red
//canvas.addSubview(redBox3)

// Implementation 2
// Red 1
let redView1 = UIView(frame: CGRect.zero)
redView1.translatesAutoresizingMaskIntoConstraints = false
redView1.backgroundColor = .red
canvas.addSubview(redView1)

let margin: CGFloat = 0
NSLayoutConstraint(item: redView1, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView1, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView1, attribute: .leading, relatedBy: .equal, toItem: canvas, attribute: .leading, multiplier: 1, constant: margin).isActive = true
NSLayoutConstraint(item: redView1, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: margin).isActive = true
NSLayoutConstraint(item: redView1, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: margin).isActive = true

// Red 2
let redView2 = UIView(frame: CGRect.zero)
redView2.translatesAutoresizingMaskIntoConstraints = false
redView2.backgroundColor = .red
canvas.addSubview(redView2)

let margin2: CGFloat = redView1.frame.maxX
NSLayoutConstraint(item: redView2, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView2, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView2, attribute: .leading, relatedBy: .equal, toItem: canvas, attribute: .leading, multiplier: 1, constant: margin2).isActive = true
NSLayoutConstraint(item: redView2, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: margin2).isActive = true
NSLayoutConstraint(item: redView2, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: margin2).isActive = true

// Red 2
let redView3 = UIView(frame: CGRect.zero)
redView3.translatesAutoresizingMaskIntoConstraints = false
redView3.backgroundColor = .red
canvas.addSubview(redView3)

let margin3: CGFloat = redView2.frame.maxX
NSLayoutConstraint(item: redView3, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView3, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView3, attribute: .leading, relatedBy: .equal, toItem: canvas, attribute: .leading, multiplier: 1, constant: margin3).isActive = true
NSLayoutConstraint(item: redView3, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: margin3).isActive = true
NSLayoutConstraint(item: redView3, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: margin3).isActive = true
