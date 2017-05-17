## Implement Missing Members

*Configuration Id: com.mfractor.code_actions.forms.implement_missing_members*

When a control uses undefined members/properties in a Xaml view, this refactoring collects all missing properties, attempts to resolve their types and then generates them onto the control/class.

The following **must** be satisfied for this refactoring to trigger:

 * One or more undefined members/properties must be in use.
 * The referenced class must exist.
 * The referenced class must be writeable; aka it must be in the users source code.
 * When the referenced class derives from `Xamarin.Forms.BindableObject`, this refactoring will allow the generation of bindable properties.

Let's examine the following code:

**MyCustomSlider.cs**

```

public class MyCustomSlider : Xamarin.Forms.Slider
{
}

```

**MyXamlView.xaml**

```

<?xml version="1.0" encoding="utf-8"?>
<ContentPage xmlns="http://xamarin.com/schemas/2014/forms"
	xmlns:local="clr-namespace:HelloMFractor"
	xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
	x:Class="HelloMFractor.HelloMFractorPage">
	<local:MyCustomSlider 
		MinRangeColor="{Binding MinColor}"
		MaxRangeColor="{Binding MaxColor}"/>
</ContentPage>
 

```

When `Implement Missing Members` is actioned MFractor can generate the members/properties as plain old properties (EG: `get; set;`) or as a bindable property implementation.

For example, when actioned to generate bindable properties, `MyCustomSlider` would become:

```

public class MyCustomSlider : Slider
{
    public static readonly BindableProperty MaxRangeColorProperty = BindableProperty.Create(nameof(MaxRangeColor), typeof(Color), typeof(HelloMFractor.MyCustomSlider), default(Color));
    public Color MaxRangeColor
    {
        get
        {
            return (Xamarin.Forms.Color)GetValue(MaxRangeColorProperty);
        }

        set
        {
            SetValue(MaxRangeColorProperty, value);
        }
    }

    public static readonly BindableProperty MinRangeColorProperty = BindableProperty.Create(nameof(MinRangeColor), typeof(object), typeof(HelloMFractor.MyCustomSlider), default(Color));
    public Color MinRangeColor
    {
        get
        {
            return (Xamarin.Forms.Color)GetValue(MinRangeColorProperty);
        }

        set
        {
            SetValue(MinRangeColorProperty, value);
        }
    }
}

```

### Uses:

 * [Generate Instance Property](/code-generation/csharp.md#generate-instance-property)
 * [Generate Event Handler Declaration](/code-generation/csharp.md#generate-event-handler-declaration)
 * [Generate Bindable Property](/code-generation/xamarin-forms.md#generate-bindable-property)


## Generate Grid ColumnDefinitions

*Configuration Id: com.mfractor.code_actions.forms.generate_grid_column_definitions*

This code generation action adds column definition setter to a Xamarin.Forms.Grid Xaml node with a single `<ColumnDefinition Width=\"*\"/>` element; this allows you to quickly setup a boilerplate grid.
When this refactoring is used, the `<Grid>` node will have the following code injected:
```
<Grid>
\t<Grid.ColumnDefinitions>
\t<ColumnDefinition Width=\"*\">
\t</Grid.ColumnDefinitions>
</Grid>
```

### Uses:

 * [Generate Grid Column Definition](/code-generation/xaml.md#generate-grid-column-definition)


## Generate Grid RowDefinitions

*Configuration Id: com.mfractor.code_actions.forms.generate_grid_row_definitions*

This code generation action adds row definition setter to a Xamarin.Forms.Grid Xaml node with a single `<RowDefinition Height="*"/>` element; this allows you to quickly setup a boilerplate grid.

When this refactoring is used, the `<Grid>` node will have the following code injected:

```

<Grid>

	<Grid.RowDefinitions>

	<RowDefinition Height="*">

	</Grid.RowDefinitions>

</Grid>

```

### Uses:

 * [Generate Grid Row Definition](/code-generation/xaml.md#generate-grid-row-definition)


## Generate Grid Column Definition

*Configuration Id: com.mfractor.code_actions.forms.generate_column_definition*

Adds a single `<ColumnDefinition Width=\"*\"/>` element to the `Grid.ColumnDefinitions` node.

### Uses:

 * [Generate Grid Column Definition](/code-generation/xaml.md#generate-grid-column-definition)


## Generate Grid Row Definition

*Configuration Id: com.mfractor.code_actions.forms.generate_row_definition*

Adds a single `<RowDefinition Height=\"*\"/>` element to the `Grid.RowDefinitions` node.

### Uses:

 * [Generate Grid Row Definition](/code-generation/xaml.md#generate-grid-row-definition)


## Generate Resource Dictionary

*Configuration Id: com.mfractor.code_actions.forms.generate_resource_dictionary*

The **Generate Resource Dictionary** code action adds a `MyView.ResourceDictionary` property with a nested resource dictionary to any Xaml node that derives from `Xamarin.Forms.VisualElement` or is the root application class. Developers can quickly add a resource dictionary in just a few keystrokes; this is especially useful when you need to add a resource dictionary to the root xaml node on a control or page.

## Implement View Model

*Configuration Id: com.mfractor.code_actions.forms.implement_view_model*

The **Implement View Model** code action detects when a xaml document has unimplemented bindings, gathers them all and then implements them in bulk into a new or existing view model.

Consider the following Xaml code:

**LoginPage.xaml**

```
<?xml version="1.0" encoding="utf-8"?>
<ContentPage xmlns="http://xamarin.com/schemas/2014/forms"
	xmlns:local="clr-namespace:HelloXamarinForms"
	xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
	x:Class="HelloXamarinForms.HelloXamarinFormsPage">
	<StackLayout>
		<Label Text="{Binding Message}"
			TextColor="{Binding Color}"
		  FontSize="{Binding Size}"/>
	</StackLayout>
</ContentPage>
```

When used, the implement view model code action will gather all missing bindings, resolving the name and type:

 *  `Text="{Binding Message}"`: A property named `Message` of type `string`.
 *  `TextColor="{Binding Color}"`: A property named `Color` of type `Xamarin.Forms.Color`.
 *  `FontSize="{Binding Size}"`: A property named `Message` of type `double`.

Then it generates the property declarations using those names and types, creates a new class named `LoginViewModel` and then writes a new file named `LoginViewModel.cs` containing the new class definition.

The generated code would be:

```
using System;
namespace MyApp.ViewModels
{
    public class LoginViewModel
    {
        public string Message { get; set; }
        public Xamarin.Forms.Color Color { get; set; }
        public double Size { get; set; }
    }
}
```


### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **BaseClass** | System.String | NA | The fully qualified type to use as the base class for the view model. For example, `MyApp.ViewModels.BaseViewModel`. |
| **UseFodyPropertyChanged** | System.Boolean | `True` | If the PropertyChanged attribute should be added to the class when Fody.PropertyChanged is referenced by the assembly. |
| **ViewModelsFolder** | System.String | NA | The folder path relative to the project root to insert the newly created view model class into. For example `ViewModels/Cells`. |
| **ViewModelSuffix** | System.String | `"ViewModel"` | The suffix to append to the end of the newly created view model. For example, setting this to `VM` would cause a page named `MainPage` to create a view model named `MainVM`. |

### Uses:

 * [Generate Instance Property](/code-generation/csharp.md#generate-instance-property)
 * [Generate ICommand Implementation](/code-generation/xamarin-forms.md#generate-icommand-implementation)

