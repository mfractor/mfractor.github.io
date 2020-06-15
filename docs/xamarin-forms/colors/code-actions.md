!!! quote "Quick tools for refactoring colors and organizing them in the project."

## Introduction

MFractor provides several code actions that allow you to change and refactor color declarations in your XAML documents and are available contextually on any property of the `Color` type.

### Add transparency channel to color

Xamarin.Forms color system supports defining the opacity level of a color through the alpha channel. This is done by adding a hexadecimal component to the start of a hex color value. This action can be applied to color properties with hex literals, either the 3 or 6 digits variants (`#FFF` or `#FFFFFF`):

![](/img/xamarin-forms/color-actions-add-transparency.png)

By applying this action your MFractor will prefix it with `00` for the alpha channel.

### Convert named color to hex

This action can be applied to named colors (such as `White`, `Black`, `Red`, etc.) to convert its declaration to its hex representation.

![](/img/xamarin-forms/color-actions-convert-hex.png)

By applying this action will result as the following examples:

| Named Color   | Hex Value
|---            |---
| White         | #FFFFFF
| Black         | #000000
| Red           | #FF0000
| Blue          | #00FF00
| Green         | #0000FF

!!! tip
    Named colors are defined on the [`Color`](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.color?view=xamarin-forms) struct of the Xamarin.Forms library. Check-out the [docs](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.color?view=xamarin-forms) to get a full list of named colors and its values.

### Edit color using color editor

This action will present the MFractor Color Picker dialog that allows you to change the color using the channel sliders, while previewing in real-time. It can be applied to either named or hex literal color declarations:

![](/img/xamarin-forms/color-actions-edit-color.png)

Once you have choosen the desired color just click choose and its value will be updated in code.

![](/img/xamarin-forms/color-picker.png)

You can also paste a hex value to the `Color` to preview it, and use the sliders to do any fine tunning.

