/***************************************************************************************************
 String+Bootstring.swift
   © 2017-2018 YOCKOW.
     Licensed under MIT License.
     See "LICENSE.txt" for more information.
 **************************************************************************************************/

extension String {
    /// Returns a new string, made from the receiver, composed from a small set of basic code points
    /// using parameters of the Bootstring encoder.
    /// - parameter encoder: an instance of `Bootstring`.
    /// - returns: the encoded string, or `nil` if encoding fails.
    public func addingBootstringEncoding(with encoder: Bootstring) -> String? {
        return try? encoder.encode(self)
    }

    /// Returns a new string represented by the receiver that is expected to be encoded with the
    /// parameters of the Boostring.
    /// - parameter decoder: an instance of `Bootstring`.
    /// - returns: the decoded string, or `nil` if decoding fails.
    public func removingBootstringEncoding(with decoder: Bootstring) -> String? {
        return try? decoder.decode(self)
    }
}

