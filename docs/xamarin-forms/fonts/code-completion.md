!!! quote "Visually previewing glyphs from a font with glyph tooltips"

## Introduction

When working with font icons in Xamarin.Forms, it's difficult to discover the icons that are available within a font asset.

To assist with working with font icons in XAML, MFractor provides code completion and previews for all named glyphs within a font asset.

!!! info "Please see the [FontFamily resolution](font-family-resolution.md) article to understand how MFractor resolves your font assets"

!!! warning "Desktop Fonts vs Web Fonts"
    MFractor can only provide glyph code completion when the referenced font asset is a web font. Desktop fonts do not contain the meta-data that associates a glyph name to its icon code.

    If no glyphs are suggested, please ensure that your font asset is a web font.

## Font Glyph Code Completion

To access font glyph tooltips, ensure that the element applies a valid font asset to its `FontFamily` property.

To access the list of available glyphs in a font asset, start typing in any property for that element that is a `string`.

MFractor will suggest all font icons available in the referenced font by name and display a preview of that icon.

To apply a completion, type the name of an icon or select it in the completion window, and press enter.

MFractor will then insert the escaped unicode character reference:

![Font glyph code completion with MFractor](/img/xamarin-forms/font-glyph-completion.png)
