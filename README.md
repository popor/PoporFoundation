# PoporFoundation

[![CI Status](https://img.shields.io/travis/popor/PoporFoundation.svg?style=flat)](https://travis-ci.org/popor/PoporFoundation)
[![Version](https://img.shields.io/cocoapods/v/PoporFoundation.svg?style=flat)](https://cocoapods.org/pods/PoporFoundation)
[![License](https://img.shields.io/cocoapods/l/PoporFoundation.svg?style=flat)](https://cocoapods.org/pods/PoporFoundation)
[![Platform](https://img.shields.io/cocoapods/p/PoporFoundation.svg?style=flat)](https://cocoapods.org/pods/PoporFoundation)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

PoporFoundation is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PoporFoundation'
```
1.Some safe function with runtime, NSArray, NSDictionary, NSURL etc. 
2.Some useful tools

增加了对macOS的兼容.

更新日志
0.0.36: 之后不再对 filrUrl 进行toUrlEncode, 因为发现 AVAudioPlayer 使用本地url不能将汉字转换为 urlCode .

1.10
增加NSString+pSwizzling

1.11
NSDictionary+pSwizzling setSafeObject: forKey: 增加对key的判断

1.13
增加:  NSString.NSMutableAttributedString 生成具有间隔的att, 例如身份证、电话号码、银行卡、金钱数等

1.14
增加NSTimer, (从<<Effective Objective-C 2.0>>截取),解决了NSTimer循环引用的问题,简化使用.

## Author

popor, 908891024@qq.com

## License

PoporFoundation is available under the MIT license. See the LICENSE file for more info.
