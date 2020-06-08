!!! quote ""

## Introduction

In Xamarin.Forms there are a few ways of declaring Thickness values on XAML files. Novices tend to get confused by the available ways of doing this, and experience programmers can also fall on typos. This code analysis tries to aid you on identifying mismatches and cases where the declaration can be simplified.

## Declaring Thicknesses

Thicknesses values can be declared mainly to `Padding` and `Margin` properties of XAML (althought other custom components may use it for other purposes). The `Thickness` type is a struct that declares four main properties: Left, Right, Top, Bottom.

It's used to represent the of spacing of of each of those four directions. Suppose you want to declare a `Label` that has a margin around itself of 8 points on its left and right sides and 16 points on its top and bottom:

```xml
<Label Text="Thickness Sample" Margin="8,16,8,16" />
```

When declaring a Thickness you pass the value of each side separeted by a comma in the following order: `[left],[top],[right],[bottom]`. I personally like to think of a line going around a box starting from its left side until it closes itself, its how I always remember this order of sides.

It turns out that the values for left and right are the same, as the values for the bottom and bottom. This is a so common scenario that Xamarin.Forms allows you to simplify this declaration using only 2 values:

```xml
<Label Text="Thickness Sample" Margin="8,16" />
```

This is equivalent to the previous declaration. The first number refers to margin that will be set to the left and right of the label (referred to as _horizontal size_), and second refers to its top and bottom (referred to as _vertical size_). The code analysis will check for such declarations and suggest you to simplify then:

![Tooltip suggesting thickness declaration simplification](/img/xamarin-forms/thickness-analysis-simplify.png)

But wait, there's more! Sometimes you wish to apply the same margin value to every side. This is called _uniform size_ and you can declare it as a single value:

```xml
<Label Text="Thickness Sample" Margin="16" />
```

This will apply a margin of 16 points to each side of this label. The analyzer also identifies declarations that are considered uniform, such as `16,16,16,16` or `16,16` and provides suggestion for simplification.

## Invalid Values

Any values that falls out off the patterns presented on the previous section are invalid thickness declarations. Thankfully, XAML compilation is standard for new Xamarin.Forms projects, and invalid declarations are catch on build time. But for older projects that doesn't use pre-compiled XAML assets, MFractor brings a handy analyzer that prevents those errors to occur on runtime:

![Tooltip suggesting thickness declaration simplification](/img/xamarin-forms/thickness-analysis-invalid.png)


