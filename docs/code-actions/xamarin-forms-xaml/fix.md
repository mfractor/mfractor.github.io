## Generate property onto parent type

*Configuration Id: com.mfractor.code_fixes.forms.generate_property*

This fix generates a property with a getter and setter onto the parent type.

### Uses:

 * [Generate Instance Property](/code-generation/csharp.md#generate-instance-property)


## Generate bindable property on type

*Configuration Id: com.mfractor.code_fixes.forms.generate_bindable_property*

This fix generates a bindable property onto the targetted class.

### Uses:

 * [Generate Bindable Property](/code-generation/xamarin-forms.md#generate-bindable-property)


## Replace attribute with closely named member

*Configuration Id: com.mfractor.code_fixes.forms.autocorrect_member*

Looks for members on a C# class that are named closely to an unresolved xml attribute and then suggest near matches.

## Replace with correct attached property name

*Configuration Id: com.mfractor.code_fixes.forms.no_attached_property*

Replaces an incorrect attached property with an auto-corrected value.

## Auto-Correct Event Handler Name

*Configuration Id: com.mfractor.code_fixes.forms.autocorrect_event_handler*

Auto-corrects a missing event handler name with a closely named callback from the code behind class.

### Uses:

 * [Generate Event Handler Method Callback](/code-generation/csharp.md#generate-event-handler-method-callback)


## Generate Event Handler

*Configuration Id: com.mfractor.code_fixes.forms.generate_event_handler*

When an event handler Xaml attribute references a method that does not exist on the code behind class, the **Generate Missing Event Handler** code fix will generate a method on the code behind class.

Consider the following code:


**View: LoginPage.xaml**
```
<?xml version="1.0" encoding="utf-8"?>
<ContentPage xmlns="http://xamarin.com/schemas/2014/forms"
	xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
	x:Class="HelloMFractor.LoginPage">
	<Button Clicked="OnButtonClicked"/>
</ContentPage>
```

**Code Behind: LoginPage.xaml.cs**
```
public partial class LoginPage : ContentPage
{
    public LoginPage()
    {
        InitializeComponent();
    }
}
```

The referenced method `OnButtonClicked` does not exist in the views code behind class, `LoginPage`. The corresponding [analyser](http://docs.mfractor.com/code-analysis/xamarin-forms-xaml.ms/#event-handler-exists-in-code-behind-class) will detect this issue and annotate it in your source code.

From here, we can action the code fix to generate a method stub in `LoginPage.xaml.cs`:

![Generating an event handler](/img/code-actions/forms/generate-event-handler.gif)


### Uses:

 * [Generate Event Handler Method Callback](/code-generation/csharp.md#generate-event-handler-method-callback)


## Replace Field Or Method Reference With Property

*Configuration Id: com.mfractor.code_fixes.forms.binding_expression_does_not_return_property*

Replaces a field or method symbol within a binding expression with a suggested property name.

## Generate Binding Expression Property Implement

*Configuration Id: com.mfractor.code_fixes.forms.generate_binding_property*



### Uses:

 * [Generate Instance Property](/code-generation/csharp.md#generate-instance-property)


## Autocorrect class or property

*Configuration Id: com.mfractor.code_fixes.forms.autocorrect_csharp_symbol*

When a c# symbol reference expression does not resolve, this fix applies an auto-corrected suggestion from the class/property.

## Import namespace and assembly

*Configuration Id: com.mfractor.code_fixes.forms.resolve_csharp_symbol*

When the namespace inside c# symbol reference expression can be resolved to a .NET symbol in the project or its references this fix generates an 'xmlns' import statement in the root xaml element.

## Generate class and static member

*Configuration Id: com.mfractor.code_fixes.forms.generate_class_and_member*

When a c# symbol reference expression does not resolve, this fix generates a stub class declaration with a default, readonly static member.

## Generate class

*Configuration Id: com.mfractor.code_fixes.forms.generate_csharp_class*

When a c# symbol reference expression does not resolve, this fix generates an implementation for the missing class.

## Generate property

*Configuration Id: com.mfractor.code_fixes.forms.generate_csharp_member*

Generate a static or constant variable onto the targetted class

## Create x:TypeArguments attribute.

*Configuration Id: com.mfractor.code_fixes.forms.create_type_arguments_attribute*

Generates an x:TypeArguments attribute, resolving the potential argument types if possible.

## Generate Missing Value Converter

*Configuration Id: com.mfractor.code_fixes.forms.generate_missing_class_as_value_converter*

When a Xaml node cannot be resolved and it ends with '[cC]onverter', this fix will create a new implemenation of IValueConverter.

### Uses:

 * [Generate IValueConverter Implementation](/code-generation/xamarin-forms.md#generate-ivalueconverter-implementation)


## Generate Missing View

*Configuration Id: com.mfractor.code_fixes.forms.generate_missing_class_as_view*

When a Xaml node cannot be resolved, this fix will create a new implemenation of that class deriving from 'Xamarin.Forms.View'.

## Generate Missing Class

*Configuration Id: com.mfractor.code_fixes.forms.generate_missing_class*

When a Xaml node cannot be resolved, this fix will create a new implementation of that class.

## Generate Resource Dictionary Key

*Configuration Id: com.mfractor.code_fixes.forms.missing_resource_key*

When a Xaml node that is declared within a ResourceDictionary is missing the `x:Key` attribute, this fix will automatically create a new `x:Key` attribute for the node.

## Replace unknown property value with autocorrection

*Configuration Id: com.mfractor.code_fixes.forms.unknown_static_property_value*

When a xaml element property attempts to reference a static field (for instance LayoutOptions.Center), this fix finds the nearest named member and replaces the incorrect value with an auto-correction.

## Replace node with auto-corrected match

*Configuration Id: com.mfractor.code_fixes.forms.autocorrect_unresolved_reference*

This fix action replaces a mispelt xaml node that can be resolved in an assembly with its correct .NET symbol name.

## Import Namespace And Assembly

*Configuration Id: com.mfractor.code_fixes.forms.import_reference*

When an xaml node can be resolved to a .NET symbol in the project or its references this fix generates an 'xmlns' import statement in the root xaml element.

## Remove unused xmlns declaration

*Configuration Id: com.mfractor.code_fixes.forms.xml_namespace_is_unused*

Removes the unused xmlns declaration.

## Rename Duplicate Namespace References

*Configuration Id: com.mfractor.code_fixes.forms.multiple_namespace_assembly_references*

Replaces all occurances of a namespace with .

### Uses:

 * [Rename Xaml Namespace Generator](/code-generation/xaml.md#rename-xaml-namespace-generator)


## Replace xml namespace with auto-correction

*Configuration Id: com.mfractor.code_fixes.forms.xml_namespace_does_not_exist*

Replaces an xml namespace prefix with the auto-corrected xml namespace.

## Replace x:Name with closely named member

*Configuration Id: com.mfractor.code_fixes.forms.xreference_does_not_exist*

Replaces an invalid x:Name reference with a similiarly named x:Name declared in the current document.

## Generate Missing Binding Command Stub

*Configuration Id: com.mfractor.code_fixes.forms.generate_binding_command_stub*

When the symbol referenced inside a binding expression is unresolved, this fix can either apply an auto-correcet or generate a property on elements the BindingContext

### Uses:

 * [Generate ICommand Implementation](/code-generation/xamarin-forms.md#generate-icommand-implementation)


## Autocorrect Nearly Named Property Binding

*Configuration Id: com.mfractor.code_fixes.forms.autcorrect_property_binding*



## Encapsulate With Resource Dictionary

*Configuration Id: com.mfractor.code_fixes.forms.encapsulate_with_resource_dictionary*

When declaring the resources for a page/view, it is common to accidentally put resources directly inside a `MyPage.Resources` rather than wrapping the elements with a `ResourceDictionary` declaration.

**Example:**
```
<?xml version="1.0" encoding="utf-8"?>
<ContentPage xmlns="http://xamarin.com/schemas/2014/forms"
	xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
	x:Class="HelloMFractor.HelloMFractorPage">
	<ContentPage.Resources>
		<x:String>Hello World!</x:String>
	</ContentPage.Resources>
</ContentPage>
```

In the above example, the declaration `<x:String>Hello World!</x:String>` is declared directly inside the property setter, which will cause a type-mismatch exception at runtime.

When actioned, the **Encapsulate with resource dictionary** fix will wrap elements inside a resources property setter node with a resource dictionary. This would correct the above sample to:

```
<?xml version="1.0" encoding="utf-8"?>
<ContentPage xmlns="http://xamarin.com/schemas/2014/forms"
	xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
	x:Class="HelloMFractor.HelloMFractorPage">
	<ContentPage.Resources>
    <ResourceDictionary>
		  <x:String>Hello World!</x:String>
    </ResourceDictionary>
	</ContentPage.Resources>
</ContentPage>
```


## Import Value Converter For Binding

*Configuration Id: com.mfractor.code_fixes.forms.import_resolving_value_converter*

Inspects for IValueConverter implementations within the project and it's references that match the value conversion flow for this binding type mismatch. IValueConverter implementations must be annotated with the `ValueConversionAttribute` to be detected by this fix.

## Create Value Converter That Resolves Type Flow

*Configuration Id: com.mfractor.code_fixes.forms.create_resolving_value_converter*

Using the input and output type for a value conversion path, this code fix will create a new value converter implementation for the input and output type.

### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **DefaultConverterNamespace** | System.String | `"converters"` | The namespace name of the xmlns import statement for the newly created value converter |

### Uses:

 * [Generate IValueConverter Implementation](/code-generation/xamarin-forms.md#generate-ivalueconverter-implementation)

