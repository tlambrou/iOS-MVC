//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport



//PlaygroundPage.current.liveView = canvasTest


class BoardView: UIView {
  
  init(boardWidth: CGFloat, boardHeight: CGFloat) {
    
    var views = [UIView]()
    
    let canvasFrame = CGRect(x: 0, y: 0, width: boardWidth, height: boardHeight)
    
    super.init(frame: canvasFrame)
    
    
    
    self.backgroundColor = .blue
    
    for i in 0..<9 {
      
      
      
      var x: CGFloat = 0
      var y: CGFloat = 0
      
      func setX () -> CGFloat {
        switch i {
        case 0, 3, 6:
          x = CGFloat(0) * (self.frame.size.width / 3)
          return x
        case 1, 4, 7:
          x = CGFloat(1) * (self.frame.size.width / 3)
          return x
        case 2, 5, 8:
          x = CGFloat(2) * (self.frame.size.width / 3)
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
          y = CGFloat(0) * (self.frame.size.height / 3)
          return y
        case 3, 4, 5:
          y = CGFloat(1) * (self.frame.size.height / 3)
          return y
        case 6, 7, 8:
          y = CGFloat(2) * (self.frame.size.height / 3)
          return y
        default:
          print("switch didn't work")
          y = CGFloat(0)
          return y
        }
      }
      
      x = setX()
      y = setY()
      
      let frame = CGRect(x: x, y: y, width: self.frame.size.width/3, height: self.frame.size.height/3)
      let view = UIView(frame: frame)
      view.backgroundColor = .white
      view.layer.borderWidth = CGFloat(2)
      views.append(view)
      self.addSubview(view)
    }
    
    
    
    
  }
  
  init(fieldWidth: CGFloat, fieldHeight: CGFloat) {
    
    var views = [UILabel]()
    
    let canvasFrame = CGRect(x: 0, y: 0, width: fieldWidth*3, height: fieldHeight*3)
    
    super.init(frame: canvasFrame)
    
    self.backgroundColor = .blue
    
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
      let label = UILabel(frame: frame)
      
      label.backgroundColor = .white
      views.append(label)
      
      label.layer.borderWidth = CGFloat(2)
      
      self.addSubview(label)
      
      
      
      
    }
    
}
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}


let board = BoardView(boardWidth: CGFloat(500), boardHeight: CGFloat(460))
//PlaygroundPage.current.liveView = board

let board2 = BoardView(fieldWidth: 180, fieldHeight: 140)

PlaygroundPage.current.liveView = board2