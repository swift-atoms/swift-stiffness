# swift-stiffness

Use this package when a value is stiffness: how much force a spring needs per length. Start from `Stiffness`, a kind of quantity of swift-quantity, and make an amount with `Stiffness.amount(_:)`; it is a `Stiffness.Value<Scalar>`, a `Tagged<Stiffness, Scalar>`.

## Laws

- An amount of stiffness is stored in newtons per metre, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is mass: 1, time: -2 (exponents of the base dimensions).
- Amounts of stiffness add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- A force over a length is a stiffness, and a stiffness times a length is a force.
