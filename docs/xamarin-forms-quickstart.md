
##Xamarin.Forms Quick Start

*Learn to use the most handy features in MFractor for Xamarin.Forms*

##Introduction
Welcome to the quickstart guide for using MFractor with Xamarin.Forms.

This document is a short reference of the most useful features of MFractor for Xamarin.Forms.

##Configuring A Binding Context
When the `BindingContext` property is explicitly set for a Xaml view, MFractor can analyse binding expressions and perform refactoring from Xaml to the binding context.

We explicitly configure the binding context using a view model locator:

**View Model Locator**
```cs
public namespace MyApp
{
  public static class ViewModelLocator
  {
      public static readonly LoginViewModel LoginViewModel = new LoginViewModel();
  }
}
```

**LoginPage.xaml**
```cs
<ContentPage
  xmlns:local="clr-namespace:MyApp;assembly=MyApp"
  BindingContext="{x:Static local:ViewModelLocator.LoginViewModel}"/>
```

For more detail, see [Configure Binding Context](xamarin-forms/configure-binding-context.md).

##Mvvm Naming Conventions

Implicitly associate a view to a ViewModel using these naming conventions:

 * Classes that end with `ViewModel` are assumed to be a view model for a Xaml view.
 * Xaml files that end with *Page* or *View* are assumed to be a xaml view for a view model.
 * When a view and view model share the same name without *Page*, *View* or *ViewModel*, MFractor assumes an implicit association.

Consider *LoginPage.xaml*, *LoginPage.xaml.cs* and *LoginViewMode.cs*:

 * *LoginPage.xaml* is considered a xaml view.
 * *LoginPage.xaml.cs* is considered the code behind class.
 * *LoginViewModel.cs* is considered the view model.

 For more detail, see [Implicit Binding Context Resolution](xamarin-forms/configure-binding-context.md#implicit-binding-context-resolution).

##Using Mvvm Navigation
We can quickly navigate between Views, Code Behind Class and ViewModel when we use the [Mvvm naming conventions](#-mvvm-naming-conventions).

Right click and select:

 * **

##Xaml Analysis

##Fixing Code Issues

##Generating ViewModel Bindings

##Implementing ViewModels