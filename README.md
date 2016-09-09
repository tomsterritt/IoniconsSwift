# IoniconsSwift
Easily use ionicons in your Swift projects

A Swift port of [sweetmandm/ionicons-iOS](https://github.com/sweetmandm/ionicons-iOS).

Currently using IonIcons v2.0.1

### Usage

For available icons, look at [ionicon.swift](/ionicons/ionicon.swift) - these should autocomplete using `ionicon.[...]`

#### Font

``` Swift
UIFont.ioniconFontOfSize(30.0)
```

#### Label

``` Swift
UILabel.labelWithIonicon(ionicon.Wand, color: UIColor.redColor(), iconSize: 20.0)
```

#### Image

``` Swift
UIImage.imageWithIonicon(ionicon.Wand, color: UIColor.greenColor(), iconSize: 40.0, imageSize: CGSizeMake(50, 50))
```

### Install
#### Cocoapods
`pod 'Ionicons-Swift', :git => 'https://github.com/tomsterritt/IoniconsSwift'`

#### Manual
Drag the `ionicons` folder into your project