!!! quote "Move and refactor your applications XAML resources"

## Introduction

This documentation article outlines the XAML resource refactorings provided by MFractor.

## Extracting Values Into Resources

The **Extract value into local resource** refactoring enables you to extract an attributes value into a local or global resource, replacing the

**Extracting the value into a local resource**
![Extracting values into local resources](/img/xamarin-forms/extract-resource-value-local.gif)

**Extracting the value into the App.xaml**
![Extracting values into App.xaml resources](/img/xamarin-forms/extract-resource-value-app-xaml.gif)

## Moving Resources Up To The App.xaml

The **Move Resource To App.xaml** refactoring allows you to move a local resource to your App.xaml so that it can be used globally.

![Moving local resources into the App.xaml](/img/xamarin-forms/move-resource-to-app-xaml.gif)

!!! tip
    After a resource is moved into the App.xaml, any resource analysers that target that resource kind will take affect across your entire project.

    For example, you can move a local color resource into your app.xaml and MFractor will then start to globally match any duplicate inline color values to that color. This allows you to keep your code clean and tidy.

## Generating Resource Code Behind Lookup

The **Generating Resource Code Behind Lookup** refactoring creates a C# statement in the XAML code-behind that retrieves the resource via a property.

![Creating a resource code behind lookup](/img/xamarin-forms/create-resource-code-behind-lookup.gif)

This code action enables you to expose XAML resources to your code behind class.
