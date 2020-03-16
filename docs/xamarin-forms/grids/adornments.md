!!! quote "Easily see the row/column index of a grid alongside its declaration"

## Introduction

Grids are a powerful layout provided by Xamarin.Forms that enables developers to build complex, overlapping layouts.

When we work with Grids in XAML, we use row and column definitions to define our the grid should layout our elements. These rows/columns are then referenced by index like so:

```
Grid.Row="0"
```

This introduces a problem; we now need to know the index of each row and column in order to place our elements in the right position. This means we either need to count the rows/column and/or maintain a comment for each row/column that indicates it index.

To address this problem, MFractor injects the index of the row/column alongside its declaration. This allows use to instantly see the index for a given row or column.

## Row And Column Adornments

Grid row and column adornments are automatically added to the start of row or column defintion.

**RowDefinitions**

![Grid row adornments](/img/xamarin-forms/grid-row-adornments.png)

**ColumnDefinitions**

![Grid column adornments](/img/xamarin-forms/grid-column-adornments.png)

## Click To Copy Grid Row/Column

To quickly get the XAML code to reference a given row or column, simply click on the adornment and MFractor will place the code into your clipboard.

## Disabling Grid Adornments

If you notice adverse performance impacts when editing XAML files, please try disabling grid adornments.

To do so, open MFractors preferences menu and under **Settings** -> **Feature Flags**, disable the **Grid Adornments** option.

After changing this setting, please close and reopen any XAML files for the change to take affect.
