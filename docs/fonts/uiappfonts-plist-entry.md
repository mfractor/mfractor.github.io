!!! quote "Inject the UIAppFonts entry for a font asset into the info.plist"

## Introduction

When a font is imported to an iOS project, MFractor automatically takes care of adding it's declaration to the `Info.plist` file of the project. This is required by the UIKit framework, as stated on [Apple Official Documentation on how to add custom fonts to native iOS project](https://developer.apple.com/documentation/uikit/text_display_and_fonts/adding_a_custom_font_to_your_app).

The code snippet for the entry is as follows:

```xml
<key>UIAppFonts</key>
<array>
    <string>OpenSans-Regular.ttf</string>
</array>
```

You can also check if the entry was added correctly from the _Source_ view of the `Info.plist` file on Visual Studio:

![The UIAppFonts entry view in the Info.plist tool on Visual Studio for Mac](/img/fonts/uiappfonts-entry.png)

With this settings in place you can start using the imported font in UIKit components that allows font customization, such as `UILabel`, `UIButton` and `UITextField`, and also on a Xamarin.Forms app for components that declare the `FontFamily` property, such as `Label` or `Button`.

## Example of using custom font in UIKit
