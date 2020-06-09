

## Glyph Tooltip

When working with font icons in Xamarin.Forms, one of the challenges is understanding what a particular glyph code references.

Consider the following XAML code:

```
<Label FontFamily="{StaticResource FontAwesome5ProRegular}"
      Text="&#xf00c;"
```

This `Label` uses the `&#xf00c;` icon from the `FontAwesome5ProRegular` font asset. From a maintainability perspective, it's very difficult for a developer to understand what the icon code `&#xf00c;` refers to.

To make it easier to understand what a particular references, MFractor include glyph tooltips.

!!! info "Please see the [FontFamily resolution](font-family-resolution.md) article to understand how MFractor resolves your font assets"

!!! warning "Desktop Fonts vs Web Fonts"
    MFractor can only provide glyph previews when the referenced font asset is a web font. Desktop fonts do not contain the meta-data that associates a glyph name to its icon code.

    If glyph tooltips do not appear, please ensure that your font asset is a web font.

### Font Glyph Code Tooltips

To access font glyph tooltips, hover over a font glyph code in XAML:

![Font Glyph Code tooltips with MFractor](/img/xamarin-forms/font-glyph-tooltips.png)

### x:Static Constant tooltips

If you are using a [font named constants class](/fonts/generate-font-character-code-class.md) to reference font icons, MFractor can also preview these as tooltips.

To access, hover over an `x:Static` expression that references a font character code:
![Font Glyph Code tooltips from an x:Static reference](/img/xamarin-forms/font-glyph-xstatic-tooltips.png)

## Font Typography Tools

When working with fonts in Xamarin.Forms, it's useful to be able to visually preview the typography of a font for a particular block of text.

To assist with this, MFractor includes font typography tooltips that can render a text block in the font specified for that element.

To access font typography tooltips, hover your cursor over a string literal in XAML where the elements `FontFamily` is set:

![Font typography tooltips with MFractor](/img/xamarin-forms/font-text-tooltips.png)

## NamedSize Font Tooltips

MFractor includes helper tooltips for the `NamedSize` enum for the `FontSize` attribute.

When you hover over a `NamedSize` value, MFractor will render a summary of the platform-specific font sizes that the name maps to:

![NamedSize font tooltips with MFractor](/img/xamarin-forms/named-font-tooltips.png)

[Please refer to the NamedSize documentation for more information.](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/user-interface/text/fonts#named-font-sizes)
