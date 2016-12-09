//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport



//PlaygroundPage.current.liveView = canvasTest


class BoardView: UIView {
  
  
  
  init(boardWidth: CGFloat, boardHeight: CGFloat) {
    
    var views = [UIView]()
    
    let canvasFrame = CGRect(x: 0, y: 0, width: boardWidth, height: boardHeight)
    
    super.init(frame: canvasFrame)
    
    let canvas = UIView(frame: canvasFrame)
    
    canvas.backgroundColor = .blue
    
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
    
      let frame = CGRect(x: x, y: y, width: canvas.frame.size.width/3, height: canvas.frame.size.height/3)
      let view = UIView(frame: frame)
      view.backgroundColor = .white
      views.append(view)
      canvas.addSubview(view)
    }
    
    
    
    
  }
  
  init(fieldWidth: CGFloat, fieldHeight: CGFloat) {
    var views = [UIView]()
    
    
    for i in 0..<9 {
      
      var x: CGFloat = 0
      var y: CGFloat = 0
      
      func setX () -> CGFloat {
        switch i {
        case 0, 3, 6:
          x = CGFloat(0 * fieldWidth)
          return x
        case 1, 4, 7:
          x = CGFloat(1 * fieldWidth)
          return x
        case 2, 5, 8:
          x = CGFloat(2 * fieldWidth)
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
          y = CGFloat(0 * fieldHeight)
          return y
        case 3, 4, 5:
          y = CGFloat(1 * fieldHeight)
          return y
        case 6, 7, 8:
          y = CGFloat(2 * fieldHeight)
          return y
        default:
          print("switch didn't work")
          y = CGFloat(0)
          return y
        }
      }
      
      x = setX()
      y = setY()
      
      let frame = CGRect(x: x, y: y, width: fieldWidth, height: fieldHeight)
      let view = UIView(frame: frame)
      view.backgroundColor = .white
      views.append(view)
      canvas.addSubview(view)
      super.init(frame: canvasFrame)
      
      let canvas = UIView(frame: canvasFrame)
      
      canvas.backgroundColor = .blue
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
}
