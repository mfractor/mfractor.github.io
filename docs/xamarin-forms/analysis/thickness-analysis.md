!!! quote "Aids in managing thickness declarations for paddings and margins."

## Introduction

When developing user interfaces with Xamarin.Forms `margin` and `padding` are constantly applied to elements to provide the desired spacing. Turns out that this spacing definitions are very standard among views on a carefully crafted design. So we keep declaring those constants tens of times which is tedious and error prone. It's useful to have those spacings declared in a single place and referenced by a descriptive name, like we usually do with colors.

Thickness Analysis to the rescue! 

## How it the Analysis Works

This analyzer inspects the active document scanning properties of the type [`Thickness`](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.thickness?view=xamarin-forms) and check if a declaration is repetitive among other XAML of the current project. If MFractor find the same thickness declaration 2 or more times, a warning is issued to let the user know of this duplication:

![Tooltip in place of duplicate thickness declaration](/img/xamarin-forms/thickness-analysis-tooltip.png)

From this warning users may have 2 actions:




