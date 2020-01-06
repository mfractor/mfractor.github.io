!!! quote "Generate the C# code to declare a new bindable property for a custom control"

## Introduction

When creating a custom control for Xamarin.Forms, [bindable properties](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/xaml/bindable-properties) expose CLR properties that a consumer of the control can data-bind to using the `Binding` markup extension. EG: `Text="{Binding Welcome}"`.

Bindable properties extend the default behaviour of CLR properties by adding the follow functionality:

 * Validation of incoming property values.
 * Notifications of property changes.
 * Default value support.
 * Value coercion to force the property to revaluate.

 At a minimum, bindable properties are composed of two parts:

  * The bindable property declaration. This is must be created via the `BindableProperty.Create` factory method.
  * The instance property declaration.

 **Bindable Property Example**
 ```
  public static readonly BindableProperty HasShadowProperty = BindableProperty.Create(nameof(HasShadow), typeof(bool), typeof(HelloWorld), default(bool));
  public bool HasShadow
  {
      get => (bool)GetValue(HasShadowProperty);
      set => SetValue(HasShadowProperty, value);
  }
 ```

One of the main difficulties with bindable properties is remembering the full syntax and correct structure for a new property.

To simplify their creation, the wizard generates the C# code for a new attached property.

## Using The Bindable Property Wizard

To open the bindable property wizard, press `Alt+Return` within the body a C# class that inherits from `Xamarin.Forms.VisualElement`.

In the code actions menu that opens, choose `Create a bindable property` to launch the wizard.

**Bindable Property Wizard**

![The bindable property wizard in Visual Studio Windows](/img/xamarin-forms/bindable-property-wizard.png)

The bindable property wizard consists of the following parts:

 * **Name**: The name of the new bindable property.
 * **Type**: The fully qualified type name for the bindable properties type. Defaults to `System.Object`, however, the wizard will attempt to infer the desired type based on the **Name** input. See [Automatic Type Inference](#automatic-ype-inference).
 * **Control Type**: The type of control that this bindable property targets. Defaults to the control type where the wizard was launched.
 * **Exception Handler**: A statement that handles any exception thrown during the application of a new property value.

On the right hand side of the wizard is a preview of the code that the wizard will create.

To create the new bindable property, enter the name and type of the new property and then press **Create Bindable Property**. This will insert the generated code into the class at the location of the caret.

## Automatic Type Inference

One of the most powerful aspects of the bindable wizard is it's ability to inspect the **Name** and infer what the property type is likely to be.

Once you adjust to this feature, this allows you to enter the desired name of the property and MFractor will usually guess the correct property type. This dramatically simplifies and speeds up the process of creating new bindable properties.

Here is a full list of the rules and output types the wizard uses:

  * **Bool**:
    * Name starts with: `is`, `can`, `has`, `allows`, `accepts`.
    * Name ends with: `boolean`, `bool`, `enabled`.
  * **String**:
    * Name ends with: `text`, `label`, `string`, `message`, `character`.
  * **Double**:
    * Name starts with: `double`.
    * Name ends with: `decimal`.
  * **Char**:
    * Name starts with: `char`.
  * **Enum**:
    * Name ends with: `enum`.
  * **Xamarin.Forms.ImageSource**:
    * Name ends with: `image`, `icon`, `picture`, `photo`.
  * **EventHandler**:
    * Name ends with: `callback`, `event`.
  * **System.IO.FileInfo**:
    * Name ends with: `file`.
  * **System.Windows.Input.ICommand**:
    * Name ends with: `command`.
  * **System.DateTime**:
    * Name starts with: `date`, `time`.
    * Name ends with: `date`, `time`.
  * **System.TimeSpan**:
    * Name ends with: `timespan`.
  * **Xamarin.Forms.Color**:
    * Name ends with: `color`, `colour`.
