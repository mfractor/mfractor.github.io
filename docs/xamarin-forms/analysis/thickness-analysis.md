!!! quote "Aids in managing thickness declarations for paddings and margins."

## Introduction

When developing user interfaces with Xamarin.Forms `margin` and `padding` are constantly applied to elements to provide the desired spacing. Turns out that this spacing definitions are very standard among views on a carefully crafted design. So we keep declaring those constants tens of times which is tedious and error prone. It's useful to have those spacings declared in a single place and referenced by a descriptive name, like we usually do with colors.

Thickness Analysis to the rescue! 

## How it the Analysis Works

This analyzer inspects the active document scanning properties of the type [`Thickness`](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.thickness?view=xamarin-forms) and check if a declaration is repetitive among other XAML of the current project. If MFractor find the same thickness declaration 2 or more times, a warning is issued to let the user know of this duplication:

![Tooltip in place of duplicate thickness declaration](/img/xamarin-forms/thickness-analysis-tooltip.png)

From this warning users may have 2 actions:

### Consolidate into a Static Resource

MFractor will ask for a name to identify this thickness declaration, This will be added to the `App.xaml` static resources dictionary and then every instance of the thickness will be replaced by a Static Resource declaration:

![Typing the name for consolidating a thickness result](/img/xamarin-forms/thickness-analysis-consolidate.png)

### View all usages

This action will bring the Search Results Pad/Toolbar Window showing the list of files and the places where this thickness declaration is being used:

![Search Results displayin each instance of the referenced thickness](/img/xamarin-forms/thickness-analysis-results.png)

!!! tip
    MFractor bases this analysis on the `Thickness` data type and not on separate properties that may be of this type. This means that `margin` and `padding` properties that has the same thickness declaration are considered duplicate declarations.

    Even though MFractor doesn't make this distinction on property types, you may wish to have separte Static Resources to represent margin and padding values. This may be useful in case your requirements for this different kinds of properties changes.

### Applying Existing Static Resources

When you have thickness declared as static resources in your project, the analysis will identify if the declaration matches any existing one and will suggest to apply it:

![Tooltip showing suggested actions to replace references of thickness with existing Static Resource](/img/xamarin-forms/thickness-analysis-replace.png)

You can even replace all the instances of the same thickness declaration, which is very handy when we are not used to Static Resources declaration.