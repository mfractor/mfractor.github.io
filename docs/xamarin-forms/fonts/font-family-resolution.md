!!! quote "An overview of how MFractor resolves fonts for IntelliSense and tooltips"

## Introduction

When working with custom fonts in XAML, MFractor can suggest the available glyphs in a font asset and also preview that glyph via a tooltip. This article outlines how MFractor will resolve your font asset.

To accomplish this, MFractor will resolve the font asset referenced by a particular element.

This is accomplished via three methods:

 * Resolving the `FontFamily` through fonts defined by the `ExportFontAttribute`.
 * Resolving the `FontFamily` static resource.
 * Resolving the `FontFamily` via the elements style.

## Resolving By ExportFontAttribute

One of the major features added in Xamarin.Forms 4.5 was [EmbeddedFonts](https://devblogs.microsoft.com/xamarin/embedded-fonts-xamarin-forms/); the ability to include a font asset as an `EmbeddedResource` in your code project and then use the `ExportFontAttribute` to expose it to Xamarin.Forms.

Example:
```
[assembly: ExportFont("FontAwesome.ttf")]
```

In XAML, we can now reference this font by name (with or without the file extension):

```
<Label FontFamily="FontAwesome"/>
<Label FontFamily="FontAwesome.ttf"/>
```

When MFractor encounters a `FontFamily` that is not a static resource expression, it will inspect the assembly for `ExportFontAttribute`'s and match the defined font family with either the `ExportFontAttribute.FontFileName` or `ExportFontAttribute.Alias` value.

## Resolving By Static Resource

When using custom fonts in XAML, a common method to reference a font is with a static resource expression that returns a string OnPlatform that returns the font for each platform.

Consider the following font reference:

```
<OnPlatform x:TypeArguments="x:String" x:Key="FontAwesome5ProRegular">
  <On Platform="iOS" Value="FontAwesome5Pro-Regular"/>
  <On Platform="Android" Value="FontAwesomeRegular.ttf#Regular"/>
  <On Platform="UWP" Value="/Assets/Fonts/FontAwesomeRegular.ttf#Font Awesome 5 Pro"/>
</OnPlatform>

<Label FontFamily="{StaticResource FontAwesome5ProRegular}"/>
```

In this `OnPlatform`, we reference the font asset by its postscript name, `FontAwesome5Pro-Regular`, on `iOS`. on Android via the asset name and font style `FontAwesomeRegular.ttf#Regular` and on UWP by its assets path plus the typographic family name.

When MFractor encounters a `FontFamily` that references an `OnPlatform` that returns a string, it evaluates the expression to discover the iOS/Android font asset and then attempts to load that font asset.

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
