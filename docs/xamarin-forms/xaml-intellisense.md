!!! quote "An overview of MFractors XAML code completion features."

## Introduction

![XAML Editor](/img/xamarin-forms/xaml-editor.gif)

## IntelliSense Features

### Data-Binding

### Grids

Grids take a lot of boilerplate code, instead use the intellisense feature to write the code for you:

![Image](/img/xamarin-forms/intellisense-grid.png)

This produces the following code to get you started:

```xml
<Grid>
    <Grid.ColumnDefinitions>
    </Grid.ColumnDefinitions>
    <Grid.RowDefinitions>
    </Grid.RowDefinitions>

</Grid>
```

Alongside the `Grid` there are the Row and Column definitions:

![Image](/img/xamarin-forms/intellisense-grid-columndefinition.png)

```xml
<RowDefinition Height="Auto"/>
<RowDefinition Height="*"/>
<RowDefinition Height=""/>
```

![Image](/img/xamarin-forms/intellisense-grid-rowdefinition.png)

```xml
<RowDefinition Height="Auto"/>
<RowDefinition Height="*"/>
<RowDefinition Height=""/>    
```

There are also [Shorthand Declaration Refactorings](/xamarin-forms/grids/shorthand-declaration-refactorings/) to swap to the new simplified format. See the [blog post](https://www.mfractor.com/blogs/news/simplifying-grids-in-xamarin-forms) for more details.

### Static Resources

### Dynamic Resources

- [Navigation](/xamarin-forms/dynamic-resources/navigation/)
- [IntelliSense Completions](/xamarin-forms/dynamic-resources/intellisense/)
- [Global Search Capabilities](/xamarin-forms/dynamic-resources/search/)
- [Tooltips](/xamarin-forms/dynamic-resources/tooltips/)

### Images

![Image](/img/xamarin-forms/intellisense-image.png)

See [Image Tooltips](/image-management/image-tooltips/) for more information.

### Colors

You can scroll through a handy list of `TextColor`s provided by MFractor:

![TextColor](/img/xamarin-forms/intellisense-textcolor.png)

### DataTriggers

### Setter's

### StackLayout's

There are a number a IntelliSense additions for StackLayout, these include:

Orientation

- `Orientation="Horizontal"`
- `Orientation="Vertical"`

![StackLayout](/img/xamarin-forms/intellisense-stacklayout.png)

### Event Handlers
