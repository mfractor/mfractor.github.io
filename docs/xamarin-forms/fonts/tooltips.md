!!! quote "Visually previewing glyphs from a font with glyph tooltips"

## Introduction

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

## Font Glyph Code Tooltips

To access font glyph tooltips, hover over a font glyph code in XAML:

![Font Glyph Code tooltips with MFractor](/img/xamarin-forms/font-glyph-tooltips.png)

## x:Static Constant tooltips

If you are using a [font named constants class](/fonts/generate-font-character-code-class.md) to reference font icons, MFractor can also preview these as tooltips.

To access, hover over an `x:Static` expression that references a font character code:
![Font Glyph Code tooltips from an x:Static reference](/img/xamarin-forms/font-glyph-xstatic-tooltips.png)
