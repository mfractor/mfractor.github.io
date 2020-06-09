!!! quote "Code inspections that spot common issues when working with custom fonts"

## Overview

MFractor includes several analysers to assist with working with custom fonts in XAML.

## Unknown Embedded Font

When referencing embedded fonts in XAML using the `FontFamily` attribute, it is possible to reference a font asset that is not defined.

To assist, MFractor inspects `FontFamily` occurances and verifies that the font declaration is defined in the current assembly:

![Unknown embedded font reference analysis](/img/xamarin-forms/embedded-font-reference-analysis.png)

If able, MFractor will also suggest auto-corrections to change the unknown named font size to a closely matching named value.

## Unknown Font Glyph

When using the icon fonts in XAML and using a unicode character to lookup a particular icon, it is possible to reference a glyph that does not exist in that font asset.

To assist, MFractor detects unicode characters defined in XAML and, when a custom font is reference,  inspect the font asset to see if the font glyph exists in the font asset:

![Unknown font glyph analysis](/img/xamarin-forms/font-glyph-analysis.png)

## Named Font Value Analysis

When using the `FontSize` property in XAML, you may use the `NamedSize` enum values to choose a specific known font size.

MFractor will inspect the named value provided to a `FontSize` property and verify that it maps to a known value:

![NamedSize font analysis](/img/xamarin-forms/named-font-analysis.png)

If able, MFractor will also suggest auto-corrections to change the invalid named font size to a closely matching named value.
