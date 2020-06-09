!!! quote "Migrate usages of the deprecated Icon property to IconImageSource"

## Introduction

In Xamarin.Forms 4.0, the `Icon` property was deprecated in favour of the `IconImageSource` property.

This change enabled developers to use the newly introduced `FontImageSource` to use font glyphs for icons throughout your application.

## Deprecate Icon

When MFractor encounters a usage of the `Icon` property that has been marked as obsolete, it will suggest that you change `Icon` to `IconImageSource`:

![The Icon to IconImageSource refactoring](/img/xamarin-forms/use-icon-image-source.png)

## Replace With IconImageSource

To resolve this code warning, you can click on the **Replace with IconImageSource** suggestion in the tooltip to apply the code fix.
