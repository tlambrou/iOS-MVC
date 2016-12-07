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

let greenRect = CGRect(x: 0, y: 0, width: canvas.frame.size.width/3, height: canvas.frame.size.height)
let greenView = UIView(frame: greenRect)
greenView.backgroundColor = .green
canvas.addSubview(greenView)

let blueRect = CGRect(x: greenView.frame.maxX, y: 0, width: canvas.frame.size.width/3, height: canvas.frame.size.height)
let blueView = UIView(frame: blueRect)
blueView.backgroundColor = .blue
canvas.addSubview(blueView)

let redRect = CGRect(x: blueView.frame.maxX, y: 0, width: canvas.frame.size.width/3, height: canvas.frame.size.height)
let redView = UIView(frame: redRect)
redView.backgroundColor = .red
canvas.addSubview(redView)

// Implementation 2


