!!! quote "Create a helper class that includes named constants for all character codes in a font asset"

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

When building mobile apps, we can use font glyphs instead of image assets for icons to simplify our codebase and make it more maintainable.

There are several major benefits when using fonts for our iconography:

 * Our app size becomes smaller by reducing the amount of image assetsin our app.
 * Font icons are rendered vectors. You can be recolour and resize them in code.
 * No need to wrangle many different image asset densities in your Android and iOS projects.

However, a drawback of this approach is we need to refer to font glyphs by their unicode character like so:

```
label.Text = "/uf00c";
```

This impacts code readability as it becomes difficult to understand what icon the code `/uf00c` translates to visually.

To address this issue Android improve readability, it's best practice to use a helper class that contains a named constant for each glyph in the font.

For example:

**FontAwesomeIcons.cs**
```
public class FontAwesomeIcons
{
    // ...

    public const string Check = "\uf00c";
    public const string CheckCircle = "\uf058";
    public const string CheckDouble = "\uf560";
    public const string CheckSquare = "\uf14a";

    // ...
}
```

We can now use this class to reference a named constant when setting icons:

```
label.Text = FontAwesome.FontAwesomeIcons.Check;
```

It is now obvious that the icon is a check from FontAwesome, making the code cleaner, more readable and more maintainable.

To help improve your code-bases readability by using a helper class for font icons, MFractor contains a **Generate Font Glyph Code Class** tool.

## Using the Generate Font Glyph Code Class tool

!!! warning "Desktop Fonts vs Web Fonts"
    When generating a glyph class, MFractor requires that the font asset be a **Web Font**. Typically, desktop font assets do not include the glyph names associated with a unicode characters whereas web fonts include these names to allow referencing by name via CSS.

    If the **Generate Font Glyph Code Code** tool does not generate a class, verify that the font asset is a web font.

To use the **Generate Font Glyph Code Class** tool, locate a font asset (otf or ttf) in your solution, right click on it and choose **Generate Font Glyph Glyph Class tool**:

![Starting the Generate Font Glyph Character Class tool](/img/fonts/generate-font-glyph-class-1.png)

MFractor will present a preview of the code it will generating and allow you to select the target project and change the class name. To generate the class, press **Generate**:

![Using the Generate Font Glyph Character Class tool](/img/fonts/generate-font-glyph-class-2.png)
