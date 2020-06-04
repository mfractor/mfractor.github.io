!!! quote "Generate the C# code to declare a new attached property declaration"

## Introduction

In Xamarin.Forms, [attached properties](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/xaml/attached-properties) are special properties declared on any class that can be consumed in XAML to provide specific, additional behaviour to a XAML element.

One of the best examples of an attached property is the `Grid.Row`, `Grid.RowSpan`, `Grid.Column` and `Grid.ColumnSpan` properties. These properties allow grid row and column information to be "attached" to any XAML element without the element having knowledge of the `Grid` layout.

At a minimum, attached properties are composed of three parts:

 * The attached property declaration. This must be a created via the `BindableProperty.CreateAttached` factory method.
 * The `get` method for the property. This must be a static method named `Get[Name]` that returns `[Type]` with a single parameter of `BindableObject`.
 * The `set` method for the property. This must be a static method named `Set[Name]` that returns `void` with two parameters of `BindableObject, [Type]`.

**Attached Property Example**
```
public static readonly BindableProperty HasShadowProperty = BindableProperty.CreateAttached("HasShadow", typeof(bool), typeof(MyClass), default(bool));
public static bool GetHasShadow(BindableObject target)
{
    return (bool)target.GetValue(HasShadowProperty);
}
public static void SetHasShadow(BindableObject target, bool value)
{
    target.SetValue(HasShadowProperty, value);
}
```

**Usage Example**
```
<Label local:MyClass.HasShadow="true"/>
```

One of the main difficulties  with attached properties is remembering the full syntax and correct structure for a new property.

To simplify their creation, the wizard generates the C# code for a new attached property.

## Using The Attached Property Wizard

To open the attached property wizard, press `Alt+Return` within the body any C# class.

In the code actions menu that opens, choose `Create an attached property` to launch the wizard.

**Attached Property Wizard**

![The attached property wizard in Visual Studio Windows](/img/xamarin-forms/attached-property-wizard.png)

The attached property wizard consists of the following parts:

 * **Name**: The name of the new attached property.
 * **Type**: The fully qualified type name for the attached properties type. Defaults to `System.Object`, however, the wizard will attempt to infer the desired type based on the **Name** input. See [Automatic Type Inference](/xamarin-forms/automatic-type-inference.md).
 * **Control Type**: The type of class that declared this attached property.

On the right hand side of the wizard is a preview of the code that will be created.

To create the new attached property, enter the name and type of the new property and then press **Create Attached Property**. This will insert the generated code into the class at the location of the caret.

## Automatic Type Inference

The attached property wizard supports **Automatic Type Inference** based on the name that is provided to the wizard.

Please see [the Automatic Type Inference documentation](/xamarin-forms/automatic-type-inference.md) for a full breakdown of this feature.
