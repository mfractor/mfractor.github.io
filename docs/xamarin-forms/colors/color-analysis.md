!!! quote "Inspect XAML color properties to validate color format and suggest refactorings for better organizing your color assets."

## Introduction

MFractor includes several code analysers to aid on managing the colors in your Xamarin.Forms projects. Those analysers are applied to active XAML documents on the editor and will check any property of the [`Xamarin.Forms.Color` Struct](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.color?view=xamarin-forms), including any custom or third-party component types.

Color analysers helps you with the following types of issues and enhancements:

* Check for mispelled hex color formats.
* Check for mispelled color values.
* Identify colors declared as static resources.

## Identifying mispelled hex color formats

Xamarin.Forms Color Type allows passing a hexadecimal color value in several different formats:

* **#RRGGBB**: A color with 32 bit (00-FF) Red, Green and Blue channels.
* **#AARRGGBB**: A color with 32 bit (00-FF) Alpha, Red, Green and Blue channels.
* **#RGB**: A color with 16 bit (0-F) Red, Green and Blue channels.
* **#ARGB**: A color with 16 bit (0-F) Alpha, Red, Green and Blue channels.

The color code analysis will check for values begining with an `#` to verify if they fall on one of above supported formats. If a mispelling format is identified an warning will be shown to the editor.

![Mispelled hex value in a color property of a XAML page](/img/xamarin-forms/color-analysis-hex-mispell.png)

The warning tooltip allows you to invoke the Color Picker tool to pick a valid value for your property:

![Mispelled hex value in a color property of a XAML page](/img/xamarin-forms/color-analysis-color-picker.png)

The color picker is a very useful tool for quickly setting a valid color value. You can iterate to it by dragging the _Red_, _Blue_, _Green_ and _Alpha_ channels sliders or by directly typing an integer value to its respective boxes.

The picker will try to identify an existing named color (one of the static read-only fields declared in the [`Xamarin.Forms.Color` struct](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.color?view=xamarin-forms)) for the RGB value set, or you can also type one of those suggestions to imediately get the channels filled.

By setting a color in the picker and clicking choose, MFractor will set the new value to the property. If the value represents one of the named colors this value will be used instead of the hex value.

>**Example**: type brown on the **Color** field and the picker channels will be automatically set to red 165, Green 42, Blue 42 and Alpha 255 that represents [`Color.Brown` field](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.color.brown?view=xamarin-forms) value of `#FFA52A2A`.

## Fixing Mispelled Named Colors

Visual Studio provides completion for the named colors on properties of the `Color` type, even though, typos may happen. This code analysis checks for non-hex values typed on the color properties and suggests fixes to similar named colors.

Suppose you have a color property with value of **Blu**. This is an invalid color value because it doesn't represent a valid named color, nor a hex value and neither a resource reference. This will be thrown as an error at compile time, but with the MFractor code analysis you can identify this issue as you edit your file and get suggestions to quickly fix the issue:

![Mispelled hex value in a color property of a XAML page](/img/xamarin-forms/color-analysis-named-mispell.png)

By hovering over the typo, the code analysis tooltip will show suggestions of names that closely match the mispelled one. Just click the link to have an instant fix.

## Applying Named Color to Equivalent hex value

Hex values are a useful way of representing and sharing color value, but you can't easily figure a color value just by looking at it (unless you're a very experienced designer). For this reason, its useful to have named colors when they apply, so we can quickly identify what the color value is.

This code analysis will check Color properties that has hex values declared to verify if they match one of the [named colors](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.color?view=xamarin-forms) available.

Suppose you have an element that declares a color with the value `#F5F5DC` which matches to the [`Color.Beige`](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.color.beige?view=xamarin-forms) named color. A warning will be shown to the color declaration to suggest replacing with the named version:

![The Code Analysis found a hex value that matches one of the named colors](/img/xamarin-forms/color-analysis-matching-named.png)


## Applying an Existing Color Resource

Its a common pattern to set theme Color values at the Resources of the `App.xaml` file of a Xamarin.Forms project. MFractor can identify if an explicity hex value set to a color property matches an existing resource at any level it could be declared.

Suppose you a have a Color entry for the primary color of your app theme, like below:

```xml
<ResourceDictionary>
    <Color x:Key="primaryColor">#7BCCE5</Color>
</ResourceDictionary>
```

At another part of the code, you add an item that will apply this color value, but you didn't remember about the Color resource you've declared before, and you simply copy the hex value over from your style guide:

```xml
<BoxView Color="#7BCCE5" />
```

If you hover over the squiggles of the code analysis warning, you'll find information about the existing static resource that matches the hex value you've just typed. You can click on the link for applying the change reference the resource.

![The code analysis found a hex color value that match one declared resource](/img/xamarin-forms/color-analysis-matching-resource.png)

The color value will be replaced with the reference to the static resource:

```xml
<BoxView Color="{StaticResource primaryColor}" />
```
