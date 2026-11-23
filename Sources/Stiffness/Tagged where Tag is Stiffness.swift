public import Quantity

extension Tagged::Tagged where Tag == Stiffness, Underlying: Numeric {
    /// The force of this spring stretched by `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Measure<1, Space.Physical>.Value<Underlying>) -> Force.Value<Underlying> {
        Force.amount(lhs.underlying * rhs.underlying)
    }
}
