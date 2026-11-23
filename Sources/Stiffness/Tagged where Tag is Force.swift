public import Quantity

extension Tagged::Tagged where Tag == Force, Underlying: FloatingPoint {
    /// The stiffness of a spring this force stretches by `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Measure<1, Space.Physical>.Value<Underlying>) -> Stiffness.Value<Underlying> {
        Stiffness.amount(lhs.underlying / rhs.underlying)
    }
}
