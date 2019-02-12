[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/gumob/BootstringSwift)
[![Version](http://img.shields.io/cocoapods/v/Bootstring.svg)](http://cocoadocs.org/docsets/Bootstring)
[![Platform](http://img.shields.io/cocoapods/p/Bootstring.svg)](http://cocoadocs.org/docsets/Bootstring)
[![Build Status](https://travis-ci.com/gumob/BootstringSwift.svg?branch=master)](https://travis-ci.com/gumob/BootstringSwift)
[![codecov](https://codecov.io/gh/gumob/BootstringSwift/branch/master/graph/badge.svg)](https://codecov.io/gh/gumob/BootstringSwift)
![Language](https://img.shields.io/badge/Language-Swift%204.2-orange.svg)
![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)

⚠️ This repository is no longer maintained. Please use [`PunycodeSwift`](https://github.com/gumob/PunycodeSwift) instead.

# BootstringSwift
<code>BootstringSwift</code> is a pure Swift library to allows you to encode and decode `punycoded` strings using Bootstring algorithm.
Most of all source codes are ported from [SwiftBootstring](https://github.com/YOCKOW/SwiftBootstring/tree/1.0.0). The version on this repository is added multiple platform support, support for Carthage and Cocoapods.

## What is Punycode?

Punycode is a representation of Unicode with the limited ASCII character subset used for Internet host names. Using Punycode, host names containing Unicode characters are transcoded to a subset of ASCII consisting of letters, digits, and hyphen, which is called the Letter-Digit-Hyphen (LDH) subset. For example, München (German name for Munich) is encoded as Mnchen-3ya. [(Wikipedia)](https://en.wikipedia.org/wiki/Punycode)

## Requirements

- iOS 9.3 or later
- macOS 10.12 or later
- tvOS 12.0 or later
- Swift 4.2

<small>* No plans to support tvOS 11 or earlier for now</small>


## Installation

### Carthage

Add the following to your `Cartfile` and follow [these instructions](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application).

```
github "gumob/BootstringSwift"
```

### CocoaPods

To integrate Bootstring into your project, add the following to your `Podfile`.

```ruby
platform :ios, '9.3'
use_frameworks!

pod 'Bootstring'
```

## Usage

```
import Bootstring

"寿司".addingPunycodeEncoding          // Optional("xn--sprr0q")
"xn--sprr0q".removingPunycodeEncoding // Optional("寿司")
```


## Copyright

Bootstring is released under MIT license, which means you can modify it, redistribute it or use it however you like.
