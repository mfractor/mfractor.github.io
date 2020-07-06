!!! quote "Code inspections to verify data-binding expressions."

## Introduction

Data-Binding Expressions are [XAML Markup Extensions](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/xaml/markup-extensions/) that allows you to describe how a property is bound. Markup expressions are a kind of DSL (domain-specific language) that allows you to describe extended information on attributes of XML documents.

Markup expressions are just validated against it syntax, but you can still write a Binding Expression that references invalid properties and it won't cause runtime issues other than simply not working as expected. The Code analysis tools provided by MFractor guards you against common issues that are hard track other than by trial and error.

!!! note
    Most of the Binding Expressions Analysis relies on a implicit or explicit Binding Context. Make sure to understand how MFractor [resolves the Binding Context](../binding-context-resolution/overview.md) of a file to ensure the analysis are correctly applied.

## Data-Binding Expression Analysis

Binding Expressions must declare a `Path` that resolves to a **public property** of the Binding Context and the data types must match.

!!! tip "Check out the [Data Binding Bascis](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/xaml/xaml-basics/data-binding-basics) docs for more information about Binding Expressions."

The code analysis helps you validate those requirements. For the examples bellow consider the following Binding Context class:

```csharp
public class BindingAnalyzersViewModel
{
    // A public field for storing the name.
    public string Name;

    // A private property for storing the Email.
    private string Email { get; set; }

    // The user Birthday stored as a string
    public string Birthday { get; set; }
}
```

### Expression is against an invalid symbol

This analysis validates and warn if the expression path doesn't resolve to any symbol on the binding context. In the example bellow we try to bind against a non-existing `Mail` member:

![](/img/xamarin-forms/data-binding-analysis-invalid-path.png)

Some fix suggestions may appear on the code analysis tooltip:

* If MFractor identifies a similar named properties on the Binding Context it will suggest replacements, example: _Replace with 'Email'_ action.
* MFractor can generate a new property on the binding context, the generated property will have the name of the expression and will match the type of the target property, example: _Generate property named ' Mail' in 'BindingAnalyzersViewModel_ action.

### Expression doesn't return a property

This analysis validates and warn if the expression path refers to a field or method rather than a property. In the example bellow we try to bind against the public field `Name`:

![](/img/xamarin-forms/data-binding-analysis-not-property.png)

To fix this issue you should provide a path to a existing public property or refactor the field to a property.

### Expression is against non-public property

This analysis will validate if your expression resolves to a public property of the Binding Context. In the example bellow we try to bind against the private `Email` property:

![](/img/xamarin-forms/data-binding-analysis-private-property.png)

To fix this issue you can either change the access modifier of the property or change the path to reference a valid public property.

### Expression doesn't Resolve to a Compatible Type

This analysis will validate if your expression resolves to a public property of the same type of the element property being bound to. In the example bellow we try to bind the `Date` property of the `DatePicker` that is of the type `DateTime` against the `Birthday` property of the context that is a `string`: 

![](/img/xamarin-forms/data-binding-analysis-type-clash.png)

The analyzer tooltip provides a fix suggestion of creating a [Value Converter](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/app-fundamentals/data-binding/converters) which invokes the MFractor [Value Converter Wizard](../value-converters/value-converter-wizard.md). You can also fix this issue by adjusting the data type of the source to match target property type.