import PlaygroundSupport
import UIKit

let sizeOfArea = CGSize(width: 400, height: 400)
var area = SquareArea(size: sizeOfArea, color: UIColor.gray)
area.setBalls(withColors: [UIColor.black, UIColor.red, UIColor.red, UIColor.yellow], andRadius: 30)
PlaygroundPage.current.liveView = area
