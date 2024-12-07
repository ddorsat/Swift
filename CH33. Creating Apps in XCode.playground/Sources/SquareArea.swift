import UIKit

protocol SquareAreaProtocol {
    init(size: CGSize, color: UIColor) async

    func setBalls(withColors: [UIColor], andRadius: Int) async
}

public class SquareArea: UIView, SquareAreaProtocol {
    private var balls: [Ball] = []
    private var animator: UIDynamicAnimator?
    private var snapBehavior: UISnapBehavior?
    private var collisionBehavior: UICollisionBehavior

    required public init(size: CGSize, color: UIColor) {
        collisionBehavior = UICollisionBehavior(items: [])
        super.init(
            frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        self.backgroundColor = color
        collisionBehavior.setTranslatesReferenceBoundsIntoBoundary(
            with: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
        animator = UIDynamicAnimator(referenceView: self)
        animator?.addBehavior(collisionBehavior)
    }

    required init?(coder: NSCoder) {
        fatalError("init(code:) has not been implemented")
    }

    public func setBalls(
        withColors ballsColor: [UIColor], andRadius radius: Int
    ) {
        for (index, oneBallColor) in ballsColor.enumerated() {
            let coordinateX = 10 + (2 * radius) * index
            let coordinateY = 10 + (2 * radius) * index
            let ball = Ball(color: oneBallColor, radius: radius, coordinates: (x: coordinateX, y: coordinateY))
            self.addSubview(ball)
            self.balls.append(ball)
            collisionBehavior.addItem(ball)
        }
    }
}
