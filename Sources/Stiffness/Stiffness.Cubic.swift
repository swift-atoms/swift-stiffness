extension Stiffness {
    /// Cubic stiffness: how much a spring that hardens as it is pressed adds per cube of its stretch, its force
    /// growing as k₃ x³, stored in newtons per cubic metre.
    public enum Cubic {}
}

extension Stiffness.Cubic: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -2, mass: 1, time: -2) }
}

extension Stiffness.Cubic {
    /// An amount of this kind, its scalar in newtons per cubic metre.
    public typealias Value<Scalar> = Tagged<Stiffness.Cubic, Scalar>
}
