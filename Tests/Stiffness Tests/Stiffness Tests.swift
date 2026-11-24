import Stiffness
import Testing

enum `Stiffness Tests` {}

extension `Stiffness Tests` {
    @Suite struct `Stiffness is a kind of quantity in newtons per metre` {
        @Test func `Its dimension is mass: 1, time: -2`() {
            #expect(Stiffness.dimension == Quantity.Dimension(mass: 1, time: -2))
        }

        @Test func `An amount given in newtons per metre keeps its scalar`() {
            #expect(Stiffness.amount(2.5).underlying == 2.5)
        }
    }

    @Suite struct `A stiffness is a force over a length` {
        @Test func `Its dimension balances`() {
            #expect(Stiffness.dimension == Force.dimension / Measure<1, Space.Physical>.dimension)
        }

        @Test func `A force over a length, and back`() {
            let stiffness = Force.newtons(6.0) / Space.Physical.metres(2.0)
            #expect(stiffness == Stiffness.amount(3.0))
            #expect(stiffness * Space.Physical.metres(2.0) == Force.newtons(6.0))
        }
    }

    @Suite struct `Cubic stiffness is a force per cube of a length` {
        @Test func `Its dimension balances`() {
            let length = Measure<1, Space.Physical>.dimension
            #expect(Stiffness.Cubic.dimension == Force.dimension / (length * length * length))
        }

        @Test func `An amount given in newtons per cubic metre keeps its scalar`() {
            #expect(Stiffness.Cubic.amount(2.5).underlying == 2.5)
        }
    }
}
