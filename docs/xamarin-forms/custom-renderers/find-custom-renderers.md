!!! quote "Quickly find custom renderers for Xamarin.Forms visual elements"

## Introduction

MFractor allows you to quickly find and list custom renders declared for Xamarin.Forms view components and navigate to its source code.

## Using the Code Action

!!! info
    Check the [Code Actions](/code-actions) docs for details about how to invoke the Code Actions in Visual Studio for either C# or XAML code.

This Code Action can be applied to any type derived from [`Page`](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.page?view=xamarin-forms "Xamarin.Forms.Page docs"), [`Layout`](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.layout?view=xamarin-forms "Xamarin.Forms.Layout docs"), [`View`](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.view?view=xamarin-forms "Xamarin.Forms.View docs") or [`Cell`](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.cell?view=xamarin-forms "Xamarin.Forms.Cell docs") types of the [`Xamarin.Forms`](https://www.nuget.org/packages/Xamarin.Forms/) package.

Building on the example of the previous topic, [Generate Custom Handlers](generate-custom-renderers.md), where we've created a Custom Renderer for the `EnhancedButton` class, that derives from the `Button` class, we can open it's source code and right click over the symbol name. The option `Find Custom Renderers` will appear below the _Find Refereces_:

![Invoking the Find Custom Renderers on the C# code using the context menu](/img/xamarin-forms/find-custom-renderers-csharp-menu.png)

This option can also be accessed from the quick fix menu, by invoking the `Option + Enter` keyboard shortcut or clicking on the screwdriver icon on the left of the current line:

![Invoking the Find Custom Renderers on the C# code using the quick fix](/img/xamarin-forms/find-custom-renderers-csharp-quickfix.png)

And it's also available in XAML files by right clicking on any element:

![Invoking the Find Custom Renderers on a XAML element](/img/xamarin-forms/find-custom-renderers-xaml.png)

MFractor will search in the projects that refereces the curret if there are renderers declared for this type and will present a list in the _Search Results_ pad of Visual Studio:

![Presenting the Search Results of a Find Custom Renderer operation](/img/xamarin-forms/find-custom-renderers-search-results.png)

If no Renderers are found for the element you'll receive a message on the status bar:

![Message that no results where found presented in the top status bar of Visual Studio](/img/xamarin-forms/find-custom-renderers-no-results.png)

By using this feature you can quickly identify all the custom renderers declared for the component, and quickly navigate to its source code.

!!! tip
    For more information about implement Custom Renderers for Views in Xamarin.Forms see the [official docs](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/app-fundamentals/custom-renderer/).