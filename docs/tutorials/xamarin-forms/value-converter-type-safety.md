##Value Conversion Type Safety

*Annotating IValueConverter implementations with a ValueConversion attribute to provide type-safety in Xaml*

##Introduction
In Xamarin.Forms developers data bind properties in a control to properties on a binding context using the `Binding` markup extension.

Typically the type on the control's property will match the type on the binding context property but there are often cases we want to transform one property to another. For example, a screen may have a email entry that changes color depending if the user has entered a valid email.

We can expose a boolean `IsEmailValid` on our binding context, bind the `TextColor` field of the entry to the `IsEmailValid` property and use an `IValueConverter` that converts a `True` value to black and a `False` value to red.

Our converter would look like this:

```
public class BoolToTextColorConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {
        return (bool)value ? Color.Black : Color.Red;
    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
}
```

And when used in our xaml:
```
<?xml version="1.0" encoding="UTF-8"?>
<ContentPage
		xmlns="http://xamarin.com/schemas/2014/forms"
		xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
		x:Class="MyApp.MyPage"
		xmlns:converters="clr-namespace:MyApp.Converters;assembly=MyApp">
	<ContentPage.Resources>
		<ResourceDictionary>
			<converters:BoolToTextColorConverter x:Key="boolToTextColorConverter" />
		</ResourceDictionary>
	</ContentPage.Resources>
	<Entry TextColor="{Binding IsEmailValid, Converter={StaticResource boolToTextColorConverter}}"/>
</ContentPage>
```

This can be accomplished

##The ValueConversion Attribute
In WPF, Microsoft provides the [`ValueConversionAttribute`](https://msdn.microsoft.com/en-us/library/system.windows.data.valueconversionattribute(v=vs.110).aspx) that developers can use to describe the input, output and parameter type that an `IValueConverter` expects. This class level annotation declares the intent of a value converter to tools and to other developers using a converter.

Unfortunately this attribute is in the `PresentationFramework` assembly, which we can't reference in a Xamarin.Forms PCL or shared project.

As the `ValueConversionAttribute` is simple in implementation, we can easily make our own:

```
[AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
public class ValueConversionAttribute : Attribute
{
  public ValueConversionAttribute(Type input, Type output)
  {
  }

  public Type ParameterType { get; set; }
}
```

Let's examine this attribute in detail:

 * The constructor `ValueConversionAttribute(Type input, Type output)` declares the expected input and output types for a converter.
 * `Type input` is the expected **input** type for the value converter. This is the argument `object value` for the `Convert` method and the return type for the `ConvertBack` method.
 * `Type output` is the expected **output** type for the value converter. This is the return type for the `Convert` method and the argument `object value` for the `ConvertBack` method.
 * The property `Type ParameterType` is the expected **paramter** type for the value converter. This is the argument `object parameter` for the `Convert` and `ConvertBack` methods.

To include the `ValueConversionAttribute` we can simply copy-paste the code into our code base. Alternatively, add a third party library like [FormsCommunityToolkit.Converters](https://github.com/FormsCommunityToolkit/Converters) that has the `ValueConversionAttribute` defined.

To use the `ValueConversionAttribute` in our source code, we annotate a value converter at the class level and use the `typeof` operator to provide input, output and parameter types:

```
[ValueConversion(typeof(bool), typeof(Xamarin.Forms.Color))]
public class BoolToTextColorConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {
        return (bool)value ? Color.Black : Color.Red;
    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
}
```

The `BoolToTextColorConverter` now declares it's intent when converting values to both tooling and other developers.

##Converter Type-Safety in Xaml

When an `IValueConverter` implementation is annotated with the `ValueConversion` attribute, we declare to MFractor that our value converter wishes to enforce **type safety**.

When an `IValueConverter` implementation has been annotated with the `ValueConversion` attribute, MFractor will inspect the input and output types of `Converter` expressions.

##Summary
