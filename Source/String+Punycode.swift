/***************************************************************************************************
 String+Punycode.swift
   © 2017-2018 YOCKOW.
     Licensed under MIT License.
     See "LICENSE.txt" for more information.
 **************************************************************************************************/

extension String {
    /// Returns a new string that is encoded with Punycode, or `nil` if encoding fails.
    public var addingPunycodeEncoding: String? {
        return self.addingBootstringEncoding(with: Bootstring.punycode)
    }

    /// Returns a new string that is decoded with Punycode, or `nil` if decoding fails.
    public var removingPunycodeEncoding: String? {
        return self.removingBootstringEncoding(with: Bootstring.punycode)
    }
}
