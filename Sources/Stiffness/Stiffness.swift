/// Stiffness: how much force a spring needs per length, stored in newtons per metre.
public enum Stiffness {}

extension Stiffness: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(mass: 1, time: -2) }
}

extension Stiffness {
    /// An amount of stiffness, its scalar in newtons per metre.
    public typealias Value<Scalar> = Tagged<Stiffness, Scalar>
}
