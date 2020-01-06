!!! quote "Inject the Font Family XAML entry for a font asset the Resource Dictionary of a Xamarin.Forms App"

## Introduction
Xamarin.Forms projects allows declaring font references as Resources in Resource Dictionaries, which can be set on `Font` property of most of the Forms components that has some form of text (such as `Labels` and `Buttons`).

Fonts references in Xamarin.Forms are declared as plain strings, but each platform expects the string in a different format. For this reason we use the `OnPlatform` element to reference the font in the expected way for each platform. The code snippet below shows an example of this is done:

```xml
<ResourceDictionary>
    <OnPlatform x:TypeArguments="x:String" x:Key="OpenSans">
        <On Platform="iOS" Value="OpenSans"/>
        <On Platform="Android" Value="OpenSans-Regular.ttf#Regular"/>
    </OnPlatform>
    <!-- Other dictionary resources -->
</ResourceDictionary>
```

The Font Importer tool add this declaration to the `App.xaml` file, which makes the font reference available to any XAML file in the project, but it can also be added to the Resources Dictionary of a specific file.

To customized the font of a component based on this entry, you should use the `StaticResource` markup extension of XAML. As an example, suppose a Page where we have a label that we want to apply the custom font:

```xml
<ContentPage
    xmlns="http://xamarin.com/schemas/2014/forms"
    xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
    x:Class="MFractor.Samples.Pages.CustomFontPage">
    <StackLayout VerticalOptions="Center">
        <Label
            HorizontalTextAlignment="Center"
            FontFamily="{StaticResource OpenSans}"
            FontSize="Large"
            Text="Welcome to MFractor Docs!" />
    </StackLayout>
</ContentPage>
```

![Screenshot of the page with a custom font applied in iOS](/img/fonts/font-family-xaml-01.png) ![Screenshot of the page with a custom font applied in Android](/img/fonts/font-family-xaml-02.png)

## References

* [Fonts in Xamarin.Forms](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/user-interface/text/fonts#use-a-custom-font)
