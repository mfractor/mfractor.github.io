!!! quote "Convert row and column definitions between shorthand and longhand formatted declarations"

## Introduction

Introduced in Xamarin.Forms v4.7, developers are able to declare grid row and columns as a [comma-separated list of values within an attribute](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/user-interface/layouts/grid#simplify-row-and-column-definitions).

This significantly reduces the amount of code required to declare new rows or columns, making the codebase cleaner and easier to maintain.

For example, consider the example below:

```
<Grid VerticalOptions="FillAndExpand">
      <Grid.ColumnDefinitions>
          <ColumnDefinition Width="*"/>
          <ColumnDefinition Width="2*"/>
          <ColumnDefinition Width="Auto"/>
          <ColumnDefinition Width="300"/>
      </Grid.ColumnDefinitions>
      <Grid.RowDefinitions>
          <RowDefinition Height="1*"/>
          <RowDefinition Height="Auto"/>
          <RowDefinition Height="25"/>
          <RowDefinition Height="14"/>
          <RowDefinition Height="20"/>
      </Grid.RowDefinitions>
</Grid>
```

With the new shorthand-style declarations, it would become this.

```
<Grid VerticalOptions="FillAndExpand"
        RowDefinitions="1*, Auto, 25, 14, 20"
        ColumnDefinitions="*, 2*, Auto, 300">
</Grid>
```

To help you work with the new methodology, MFractor includes refactorings to convert your grid rows and columns between these two formats:

![Converting a grid row or column definition between longhand and ](/img/xamarin-forms/grid-shorthand-refactorings.gif)

!!! important
    Shorthand style row and column definitions are only available in Xamarin.Forms 4.7 and above. The refactorings described in this article will not appear in lower versions of Xamarin.Forms.

## Convert To Attribute Format

When the grids rows or columns are declared using as Xml nodes, press `Alt+Return` on the `Grid.RowDefinitions` or `Grid.ColumnDefinitions` and choose **Convert to attribute format**. This will change the declaration to attribute format.

## Convert To Node Format

When the grids rows or columns are declared using using the attribute format, press `Alt+Return` on the `Grid.RowDefinitions` or `Grid.ColumnDefinitions` and choose **Convert to node format**. This will change the declaration to node format.
