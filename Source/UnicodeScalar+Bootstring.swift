/***************************************************************************************************
 UnicodeScalar+Bootstring.swift
   © 2017-2018 YOCKOW.
     Licensed under MIT License.
     See "LICENSE.txt" for more information.
 **************************************************************************************************/

extension UnicodeScalar {
    /// Checks whether it is a basic scalar or not in the `bootstring`.
    /// - parameter in: an instance of `Bootstring`
    /// - returns: `true` if it is a basic scalar, otherwise `false`.
    internal func isBasicScalar(in bootstring: Bootstring) -> Bool {
        if self < bootstring.initialScalar { return true }
        if let additionalBasicScalars = bootstring.additionalBasicScalars {
            return additionalBasicScalars.contains(self)
        }
        return false
    }
}
