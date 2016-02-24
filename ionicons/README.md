# ionicons-sift
Easily use ionicons in your Swift projects

A Swift port of [sweetmandm/ionicons-iOS](https://github.com/sweetmandm/ionicons-iOS).

Currently using: Ionicons v2.0.1

### Usage:

For available icons, look at ionicons-codes.h or [browse them at the **ionicons** website](http://ionicons.com).

The available icon names will autocomplete if you've included the `IonIcons.h` header when you type `ion_...`

Get the font:

    UIFont *ionIconsFont = [IonIcons fontWithSize:30.0f];

Make a UILabel with an ionicons icon:

    UILabel *label = [IonIcons labelWithIcon:ion_ionic size:20.0f color:[UIColor blackColor]];

Render an ionicons icon in a UIImage:

        UIImage *icon = [IonIcons imageWithIcon:ion_ionic
                                      iconColor:[UIColor redColor] 
                                       iconSize:60.0f 
                                      imageSize:CGSizeMake(90.0f, 90.0f)];


### Installation Step 1:

CocoaPods is great:

1. add `pod 'ionicons-swift'` to your Podfile
2. `pod install`

Non-CocoaPods is easy too:

1. Drag the folder 'ionicons' with the source files into your project

### License
ionicons is released under the MIT license and was built by the people at http://ionicframework.com. Learn more at http://ionicons.com
The stuff specific to ionicons-iOS is also released under the MIT license.
