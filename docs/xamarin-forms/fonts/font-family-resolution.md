!!! quote "An overview of how MFractor resolves fonts for IntelliSense and tooltips"

## Introduction

When working with custom fonts in XAML, MFractor can suggest the available glyphs in a font asset and also preview that glyph via a tooltip. This article outlines how MFractor will resolve your font asset.

To accomplish this, MFractor will resolve the font asset referenced by a particular element.

This is accomplished via two methods:

 * Resolving the `FontFamily` static resource.
 * Resolving the `FontFamily` via the elements style.

## Resolving By Static Resource

When using custom fonts in XAML, a common method to reference a font is with a static resource expression that returns a string OnPlatform that returns the font for each platform.

Consider the following font reference:

```
<OnPlatform x:TypeArguments="x:String" x:Key="FontAwesome5ProRegular">
  <On Platform="iOS" Value="FontAwesome5Pro-Regular"/>
  <On Platform="Android" Value="FontAwesomeRegular.ttf#Regular"/>
</OnPlatform>

<Label FontFamily="{StaticResource FontAwesome5ProRegular}"/>
```

In this `OnPlatform`, we reference the font asset by its postscript name, `FontAwesome5Pro-Regular`, on `iOS` and on Android via the asset name and font style `FontAwesomeRegular.ttf#Regular`.

When MFractor encounters a `FontFamily` that references an `OnPlatform` that returns a string, it evaluates the expression to discover the iOS/Android font asset and then attempts to load that font asset.

If successful, this enables any features

## Resolving By Style

MFractor can also resolve the font family declared by a style.

Consider the following style declaration:

```
<OnPlatform x:TypeArguments="x:String" x:Key="FontAwesome5ProRegular">
  <On Platform="iOS" Value="FontAwesome5Pro-Regular"/>
  <On Platform="Android" Value="FontAwesomeRegular.ttf#Regular"/>
</OnPlatform>

<Style x:Key="labelStyle"
       TargetType="Label"
       FontFamily="{StaticResource FontAwesome5ProRegular}"


 <Label Style="{StaticResource labelStyle}"/>
```

As the `Label` does not use the `FontFamily` property, MFractor then tries to locate the `Style` property. If successful, MFractor evaluates that style expression, locates the `FontFamily` declared by the style and then evaluates the content of setter as per [Resolving By Static Resource](#resolving-by-static-resource).
