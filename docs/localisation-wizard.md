## The Localisation Wizard

*Using the localisation wizard to quickly and easily migrate string literals into application resources for localisation*

## Introduction

When building apps, it's very common to put text that displays in the user interface directly inside your C# or XAML. However, there is usually a point where you will need to support more than just one language.

This presents a problem; you now need to convert all inline strings in XAML and C# into a localisation lookup, typically to a .resx file. The process of replacing each of these strings with a resource lookup is cumbersome, time-consume and error prone.

To make the process faster, you can use MFractor's Localisation Wizard.

## The Localisation Wizard

The localisation wizard finds all localisable strings in a C# or XAML file and allows you to migrate them into your projects .resx files.

Once opened, the localisation wizard let's you step through all localisable strings within a document. You can choose the `.resx` file to place that string into, enter a key for the new resource and then selecting replace. Alternatively, you can apply the localisation action by press the `Return` key.

If the string value already exists in the `.resx` file that you have chosen, MFractor warns you that it's a duplicate with a yellow exclamation icon. If you'd like to use the existing key for the string value, you can press `Shift+Return`.

## Localising XAML

When localising XAML, MFractor expects that you are following Xamarins recommended localisation practices as outlined in [Localizing Xamarin.Forms Apps with RESX Resource Files](https://developer.xamarin.com/guides/xamarin-forms/advanced/localization/)

If you are just getting started with localising your XAML, you can use the [Generate Localisation Infrastructure](code-actions/xaml/generate.md#generate-xaml-localisation-infrastructure) code action to quickly setup the needed files.

Otherwise, for the localisation wizard to activate in XAML you will need the following:

 - A class named `TranslateExtension` located in a folder named `il8n`. It should resolve to the symbol `MyAppsDefaultNamespace.il8n.TranslateExtension`.
 - One or more .rex files.

If you'd like to use your own custom translation extension, you can target a different symbol by providing it's fully qualified type to the [TranslateExtensionSymbol property in the string localisation generator](/code-generation/xamarin-forms.md#stringlocalisation-generator).

Once you have setup the necessary infrastructure, you can open the localisation wizard by right clicking on any string literal that's provided to a bindable property and selecting **Replace with a localised value lookup**.

 ![Using the localisation wizard to extract XAML strings into resource files](/img/forms/localisation-wizard.gif)

## Localising CSharp

In order to localise a C# file, you will need to have at least one .resx file present in the project you are localising.

When you have at least one `.resx` file, you can access the localisation wizard by pressing `Option+Return` on a string literal.

Under the quick fix menu that opens, choose **Replace with resx lookup**.

 ![Using the localisation wizard to extract C# strings into resource files](/img/code-actions/csharp/localisation-wizard.gif)


## Configuration

When using the loclaisation wizard, MFractor will choose the first resource file it finds; for some users this may be undesirable.

If you'd like to change the default `.resx` file that MFractor uses for localisation, you can customise it by including an MFractor configuration and targeting the [Default Resource File](/configuration/resx.md#default-resource-file) configuration.

**app.mfc.xml**
```
<mfractor>
  <configure id="com.mfractor.configuration.resx.default_resource_file">
    <property Name="ProjectFilePath" value="Resources/Strings.resx"/>
  </configure>
</mfractor>
```
