!!! quote "Visual elements to surface additional information about our XAML, making it easier to understand at a glance"

## Color Adornments

When MFractor encounters a color value in XAML, it will render a visual indicator for that color.

[Please see the color adornment documentation to learn more.](colors/adornments.md)

## Grid Index Adornments

MFractor will annotate grid row and column definitions with

[Please see the grid adornment documentation to learn more.](grids/adornments.md)

## Escaped Characters Adornments
When we work within XAML, there are a set of special characters that must be escaped when used inside attribute values.

When MFractor encounters one of these escaped characters, it will render the unescaped character value next to the escape sequence:

![](/img/xamarin-forms/escaped-character-adornments.png)
