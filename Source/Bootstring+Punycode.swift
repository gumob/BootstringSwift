/***************************************************************************************************
 Bootstring+Punycode.swift
   © 2017-2018 YOCKOW.
     Licensed under MIT License.
     See "LICENSE.txt" for more information.
 **************************************************************************************************/

extension Bootstring {
    /// an instance of Bootstring that has parameters for Punycode.
    public static let punycode = Bootstring(
            base: 36,
            minimumThreshold: 1,
            maximumThreshold: 26,
            skew: 38,
            damp: 700,
            initialBias: 72,
            initialScalar: UnicodeScalar(0x80),
            additionalBasicScalars: nil,
            delimiter: UnicodeScalar("-")!,
            digitEncoder: {
                switch $0 {
                case 0..<26: return UnicodeScalar($0 + 0x61)! // a-z
                case 26..<36: return UnicodeScalar($0 - 26 + 0x30)! // 0-9
                default: return nil
                }
            },
            digitDecoder: {
                switch $0.value {
                case 0x30...0x39: return Int($0.value - 0x30 + 26) // 0-9
                case 0x41...0x5A: return Int($0.value - 0x41) // A-Z
                case 0x61...0x7A: return Int($0.value - 0x61) // a-z
                default: return nil
                }
            }
    )
}
