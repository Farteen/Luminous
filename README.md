# Luminous

[![CI Status](http://img.shields.io/travis/Andrea Mario Lufino/Luminous.svg?style=flat)](https://travis-ci.org/Andrea Mario Lufino/Luminous)
[![Version](https://img.shields.io/cocoapods/v/Luminous.svg?style=flat)](http://cocoapods.org/pods/Luminous)
[![License](https://img.shields.io/cocoapods/l/Luminous.svg?style=flat)](http://cocoapods.org/pods/Luminous)
[![Platform](https://img.shields.io/cocoapods/p/Luminous.svg?style=flat)](http://cocoapods.org/pods/Luminous)

![Logo](./Example/Luminous.png)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 8+
- Swift 3
- Xcode 8

## Installation

### CocoaPods

Luminous is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
platform :ios, '8.0'
use_frameworks!
pod "Luminous"
```

Then use `import Luminous` wherever you want to use the library.

### Manually

Download the project and drag the `Luminous.swift` and `Reachability.swift` files into your project. The library depends from the [Deviice](https://github.com/andrealufino/Deviice) framework. Download it and do the same with it (dragging `Deviice.swift`).

## Dependencies

Luminous has only 1 dependency : [Deviice](https://github.com/andrealufino/Deviice) which is my other library useful to know on which device your app is running on, plus some nice information.

## What is Luminous?

Luminous is the son of [ALSystemUtilities](https://github.com/andrealufino/ALSystemUtilities) library which is no longer maintained (it still is my best library on github). I got ideas from that one and I wrote everything from scratch in Swift 3 adding some new feature and designing it in a different way thanks to the differences between Objective-C and Swift.

Luminous is a big library that I like to consider an "Helper Library". It provides a lot of information about the system and has some features that can speed up significantly the development process.

It is composed by 3 parts :
- system information (`Luminous.System.<substruct>`)
- utils (some handy method like the email check)
- custom app configuration

Here we explain every one of these parts.

### System information

Here I provide tons of information about the system and you can access them using the notation `Luminous.System.<substruct>`.

There are 11 different substructs here from which you can get information :
- `Network`
    - `isConnectedViaWiFi`
    - `isConnectedViaCellular`
    - `SSID`
- `Locale`
    - `currentLanguage`
    - `currentTimeZone`
    - `currentTimeZoneName`
    - `currentCountry`
    - `currentCurrency`
    - `currentCurrencySymbol`
    - `usesMetricSystem`
    - `decimalSeparator`
- `Carrier`
    - `name`
    - `ISOCountryCode`
    - `mobileCountryCode`
    - `networkCountryCode` (deprecated)
    - `mobileNetworkCode` (to use instead of `networkCountryCode`)
    - `allowsVOIP`
- `Hardware`
    - `processorsNumber`
    - `activeProcessorsNumber`
    - `physicalMemory`
    - `systemName`
    - `systemVersion`
    - `bootTime`
    - `isLowPowerModeEnabled`
    - `Screen`
        - `brightness`
        - `isScreenMirrored`
        - `nativeBounds`
        - `nativeScale`
        - `bounds`
        - `scale`
        - `snapshotOfCurrentView`
    - `Device`
        - `current` (returns a [Deviice](https://github.com/andrealufino/Deviice) object)
        - `identifierForVendor`
        - `orientation`
    - `Accessory`
        - `count`
        - `connectedAccessoriesNames`
        - `connectedAccessories`
    - `Sensors`
        - `isAccelerometerAvailable`
        - `isGyroAvailable`
        - `isMagnetometerAvailable`
        - `isDeviceMotionAvailable`
- `Disk`
    - `totalSpace`
    - `freeSpace`
    - `usedSpace`
    - `totalSpaceInBytes`
    - `freeSpaceInBytes`
    - `usedDiskSpaceInBytes`
    - `freeSpaceInPercentage`
    - `usedSpaceInPercentage`
- `Battery`
    - `level`
    - `state`
- `Application`
    - `version`
    - `clipboardString`

### Utils

These part contains some handy methods useful during the development. Currently, we have only 3 methods here :
- email check
- save object in user defaults
- generate a unique uuid

### App Configuration

This is the most interesting part. There is an AppConfiguration struct which is not meant to be instantiated, but has an interface that can be used to save some useful information that can be reused frequently during the development.

You can access this information calling `Luminous.AppConfiguration.<property or function>`.

The `AppConfiguration` struct has these static properties :
- `mainColor`
- `secondColor`
- `thirdColor`
- `fourthColor`
- `fifthColor`
- `currentConfiguration` which is of type `LMAppConfiguration` (enum)
- `serverBaseURLTeam`
- `serverBaseURLDevelopment`
- `serverBaseURLStage`
- `serverBaseURLProduction`

And these methods :
- `set` to set all the properties in once
- `serverBaseURLBasedOnCurrentConfiguration` to get the right server url based on the configuration

You can extend this struct to add your own properties and methods. For example, I use to extend this adding a substruct called `SegueIdentifiers` or `CellIdentifiers` where I save all the respective ids. This allows to keep everything in order and have a well readable code. Access an identifier using `Luminous.AppConfiguration.SegueIdentifiers.productDetails` is a lot better than anything else.

## Why Luminous?

I'm sure you're asking yourself "Why this library is called Luminous?". Well, stop think about it. The reason is simple : I like the word "Luminous", it gives me a unique feeling of something that is bright and awesome! So, I chose to call this lib in that way! But you can think that "Luminous is because this library will light up your way of development speeding up it and giving you more time for yourself", this is more philosophical.

## Help

Any suggestion would be really appreciated. The library is designed using structs and static functions, but I'm still not sure of this choice. I'm struggling if the best is to use static functions or static vars, so this is the first point you can help me with.

## Author

Andrea Mario Lufino, andrea.lufino@me.com

## License

Luminous is available under the MIT license. See the LICENSE file for more info.
