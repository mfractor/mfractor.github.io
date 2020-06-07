!!! quote "Visually preview color values inline in the XAML editor"

## Introduction

One of the challenges of working with colors in Xamarin.Forms

!!! warning "Color Adornments Performance Impacts"
    By default, color adornments **are not** enabled for the XAML editor. Due to rendering constraints, color adornments can have an adverse impact on IntelliSense performance.

    To enable color adornments, open MFractors **Preferences** and then go to **Settings** -> **Feature Flags** and toggle **Color Adornments**.

## Adornments Overview

### Hex Color Adornments

When MFractor detects a hexadecimal color declaration, it will evaluate that color and inject a small preview of that color:

![Hexadecimal color adornments](/img/xamarin-forms/hex-color-adornments.png)

### Named Color Adornments

When MFractor detects a color attribute that assigns a [named color constant](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.color?view=xamarin-forms#fields) (such as Red, SlateBlue, Green etc), it will evaluate the named color and inject a small preview of that color:

![Named color adornments](/img/xamarin-forms/named-color-adornments.png)

### Static Resource Color Adornments

When MFractor detects a static resource expression that returns a color resource, it will evaluate the static resource and inject a small preview of the declared color:

![Hexadecimal color adornments](/img/xamarin-forms/color-resource-adornments.png)

## Accessing The Color Editor

To make it easier to edit a color declaration, MFractor includes a built-in color editor that you can use to visually create a new color.

When a color adornment is present in XAML code, click on the color preview square to launch the editor.
