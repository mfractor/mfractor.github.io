!!! quote "Visually preview thickness definitions inline in the XAML editor"

## Introduction

To help you understand the different expression formats that can be used in a thickness value, MFractor will inject an adornment for each dimension of a thickness to show which value it affects:

![Thickness Format Adornments](/img/xamarin-forms/thickness-adornments.png)

Thickness adornments are added to the following XAML elements:

 * `<Thickness>XX</Thickness>` declarations.
 * `Padding="XX"` attributes.
 * `Margin="XX"` attributes.

## Thickness Formats

MFractor will display adornments for each thickness declaration format:

### Uniform Thickness

When a thickness is declared with a single value, this value applies to all dimensions.

MFractor will display the following adornment for a uniform thickness:

```
Padding="✣10"
```

### Horizontal and Vertical Thickness

When a thickness is declared with two values, the left item is the horizontal values (Left/Right) and the right item is the vertical values (Top/Bottom).

MFractor will display the following adornment for a horizontal/vertical thickness:

```
Padding="⬌10,⬍20"
```

### Left, Top, Right, Bottom Thickness

When a thickness is declared with four values, the dimensions are assigned in the following order: `Left, Top, Right, Bottom`.

MFractor will display the following adornment for a `Left, Top, Right, Bottom` thickness:
```
Padding="←10,↑20,→10,↓20"
```
