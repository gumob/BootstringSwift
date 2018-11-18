/***************************************************************************************************
 BootstringError.swift
   © 2017-2018 YOCKOW.
     Licensed under MIT License.
     See "LICENSE.txt" for more information.
 **************************************************************************************************/

///
/**

 # BootstringError
 An instance of `BootstringError` might be thrown by `decode(_:)` or `encode(_:)` of `Bootstring`.
 
 */
///
public enum BootstringError: Error {

    /// One or more parameters are invalid.
    case invalidParameters

    /// Input may contain invalid scalar(s).
    case invalidInput

    /// Integer overflow
    case overflow

    /// Unexpected Error
    case unexpectedError(message: String)
}
 
