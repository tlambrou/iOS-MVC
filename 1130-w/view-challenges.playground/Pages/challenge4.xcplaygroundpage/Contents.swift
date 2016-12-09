import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .gray, .purple, .yellow, .red, .orange, .lightGray, .white, .blue]

/*:
 **Task**: Create an even grid on the `canvas`, made out of squares that each are one third as wide and one third as high as the `canvas`.Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 4](./challenge4.png "Challenge 4")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */

//// Implementation 1
//
//var views = [UIView]()
//for i in 0..<9 {
//  
//  var x: CGFloat = 0
//  var y: CGFloat = 0
//  
//  func setX () -> CGFloat {
//    switch i {
//    case 0, 3, 6:
//      x = CGFloat(0) * (canvas.frame.size.width / 3)
//      return x
//    case 1, 4, 7:
//      x = CGFloat(1) * (canvas.frame.size.width / 3)
//      return x
//    case 2, 5, 8:
//      x = CGFloat(2) * (canvas.frame.size.width / 3)
//      return x
//    default:
//      print("switch didn't work")
//      x = CGFloat(0)
//      return x
//    }
//  }
//  
//  func setY () -> CGFloat {
//    switch i {
//    case 0, 1, 2:
//      y = CGFloat(0) * (canvas.frame.size.height / 3)
//      return y
//    case 3, 4, 5:
//      y = CGFloat(1) * (canvas.frame.size.height / 3)
//      return y
//    case 6, 7, 8:
//      y = CGFloat(2) * (canvas.frame.size.height / 3)
//      return y
//    default:
//      print("switch didn't work")
//      y = CGFloat(0)
//      return y
//    }
//  }
//  
//  x = setX()
//  y = setY()
//  
//  let frame = CGRect(x: x, y: y, width: canvas.frame.size.width/3, height: canvas.frame.size.height/3)
//  let view = UIView(frame: frame)
//  view.backgroundColor = colors[i]
//  views.append(view)
//  canvas.addSubview(view)
//}

// Implementation 2

var views = [UIView]()
for i in 0..<9 {
  
  var x: CGFloat = 0
  var y: CGFloat = 0
  
  func setX () -> CGFloat {
    switch i {
    case 0, 3, 6:
      x = CGFloat(0) * (canvas.frame.size.width / 3)
      return x
    case 1, 4, 7:
      x = CGFloat(1) * (canvas.frame.size.width / 3)
      return x
    case 2, 5, 8:
      x = CGFloat(2) * (canvas.frame.size.width / 3)
      return x
    default:
      print("switch didn't work")
      x = CGFloat(0)
      return x
    }
  }
  
  func setY () -> CGFloat {
    switch i {
    case 0, 1, 2:
      y = CGFloat(0) * (canvas.frame.size.height / 3)
      return y
    case 3, 4, 5:
      y = CGFloat(1) * (canvas.frame.size.height / 3)
      return y
    case 6, 7, 8:
      y = CGFloat(2) * (canvas.frame.size.height / 3)
      return y
    default:
      print("switch didn't work")
      y = CGFloat(0)
      return y
    }
  }
  
  x = setX()
  y = setY()

let view = UIView(frame: CGRect.zero)
view.translatesAutoresizingMaskIntoConstraints = false
view.backgroundColor = colors[i]
canvas.addSubview(view)


let margin: CGFloat = 0
NSLayoutConstraint(item: view, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true
NSLayoutConstraint(item: view, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: view, attribute: .leading, relatedBy: .equal, toItem: canvas, attribute: .leading, multiplier: 1, constant: x).isActive = true
NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: y).isActive = true
NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
//  view.backgroundColor = colors[i]
views.append(view)

}