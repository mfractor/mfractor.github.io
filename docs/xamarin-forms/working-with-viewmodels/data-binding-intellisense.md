!!! quote "Locate ViewModel properties while editing binding expressions and generate properties and commands"

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

Data-binding is one of top features of Xamarin.Forms allowing you to easily create reactive components declaratively, and is core to the the MVVM pattern. MFractor enhances Visual Studio by adding powerful intellisense for working with data-binding over XAML files, by providing completions and actions that generate code without the need of going back and forth a View and its View Model.

## Using Data-Binding IntelliSense

The data-binding intellisense is available on the XAML editor for Views that have a corresponding View Model class.

!!! tip "Check-out the [Automatic View Model Detection](../binding-context-resolution/binding-context-evaluation/) docs to understand how MFractor identify View Models."

Those features appears to [Bindable Properties](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/xaml/bindable-properties) on the objects you declare to your XAML files and  depending on the context and conditions of your code.

### Expression Binding IntelliSense

Binding Expressions is a [XAML Markup Extensions](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/xaml/markup-extensions/) that allows you to describe how a property is bound. A simple expression just describes to which property of the Binding Context that property should be bound to, such as:

```xml
<Entry
    Placeholder="Enter your name"
    Text="{Binding Name}>
```

The example above bounds the `Text` property of the entry field to the `Name` property of the context. Using the MVVM pattern we normaly set the context to a View Model class specific to that view.

When a View has a View Model class related to it, MFractor will automatically identify the class properties and suggest them as you type your Binding Expression, like the following example:

![](/img/xamarin-forms/data-binding-intellisense.png)

!!! tip "MFractor also validates your Binding Expressions with the [Data-Binding Code Analysis](data-binding-analysis.md) tools."

### Shorthand Binding IntelliSense

This is similar to the previous one, but it appears as suggestion when you start typing on any bindable property that doesn't have a Binding Expression declared. In the following example we want to bind the `Text` property of the `Entry` component to an `Email` property that already exists in our View Model:

![](/img/xamarin-forms/data-binding-intellisense-shorthand.png)

Notice that the tooltip provides all information about the source of the property and a preview of the code that will be inserted.

### Generating Commands and Properties

MFractor can generate Commands and Properties to your View Model directly from the XAML editor. This option appears as an Action on the Intellisense menu. When you declare an attribute of a Bindable Property of that object, the following will be presented:

![](/img/xamarin-forms/data-binding-intellisense-generate.png)

If the suggestion doesn't appear as you type you can use the `CTLR + Space` shortcut to show the menu. By selecting this option the following dialog will be presented:

![](/img/xamarin-forms/data-binding-intellisense-generate-dialog.png)

Type the name you want for the property and click ok to have it generated on your View Model class, based on the following snippet:

```csharp
public string Name { get; set; }
```

!!! info
    MFractor currently doesn't support custom declaration of View Models properties, such as ones that call `OnPropertyChanged` method for `INotifyPropertyChanged` implementors or that relies on base class methods.
    
    While custom templates for property generation is under consideration for future versions (and we appreciate your comments on our [Feedback Page](https://github.com/mfractor/mfractor-feedback/issues)), we've found that most users prefer to use [`PropertyChanged.Fody`](https://github.com/Fody/PropertyChanged) package to inject this behavior in their View Model classes.
    
    Fody is a powerful weaving tool for .NET that allows code to be injected during the compilation, and automates the generation several boilerplate code. For more information [check the project repository](https://github.com/Fody/Home/).


If the Bindable Property is of the type `ICommand` MFractor will also show an option for generating a Command to the View Model as well:

![](/img/xamarin-forms/data-binding-intellisense-generate-command.png)

Just like with the Generate Property, you can force the intellisense options to appear with the `CTRL + Space` shortcut. Selecting the option will present the Create Command dialog:

![](/img/xamarin-forms/data-binding-intellisense-generate-command-dialog.png)

Type the name you want for the command and click ok to have it generated on your View Model class, based on the following snippet:

```csharp
public ICommand SignUpCommand
{
    get
    {
        return new Command(() =>
        {
            throw new NotImplementedException();
        });
    }
}
```

Notice that this will also add the required using statements for `ICommand` and `Command` types.
