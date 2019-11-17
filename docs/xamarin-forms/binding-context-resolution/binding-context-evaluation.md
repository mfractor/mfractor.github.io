# Binding Context Evaluation

In Xamarin.Forms, all views have the property BindingContext; this specifies the object that a view should data-bind with. When coding with XAML, we can use the x:Static markup extension to reference a static C# property and explicitly provide an instance of a C# class as the binding context:

```
 <Entry BindingContext="{x:Static local:MyStaticClass.MyStaticProperty}"/>
```


This is known as the View Model Locator Pattern. We implement a static class named ViewModelLocator and use a static, readonly property to return an instance of the object we want our XAML view to data-bind with. Historically the View Model Locator Pattern has been used to provide design time data to the Xamarin.Forms XAML previewer. For a deeper insight into this pattern, read James Montemagnos excellent View Model Locator article.

For example, given a XAML page named LoginPage, we can explicitly provide an instance of LoginViewModel as the binding context like so:

**ViewModelLocator.cs**

```
public namespace MyApp
{
  public static class ViewModelLocator
  {
      public static readonly LoginViewModel LoginViewModel = new LoginViewModel();
  }
}
```

**LoginPage.xaml**

```
<ContentPage
  xmlns:local="clr-namespace:MyApp;assembly=MyApp"
  BindingContext="{x:Static local:ViewModelLocator.LoginViewModel}"/>
```
When MFractor starts analysis on LoginPage.xaml, it will check if any BindingContext properties have been assigned to. As the root ContentPage assigns a binding context, it will inspect the value component of the BindingContext attribute, check if it is a XAML expression and then evaluate it for the return type.

For the {x:Static local:ViewModelLocator.LoginViewModel} expression, MFractor will resolve the ViewModelLocator class in the local namespace and then grab the C# type of the LoginViewModel property. This informs MFractor that the page will be bound to a LoginViewModel instance and therefore to analyse all Binding expressions against the LoginViewModel type.

Explicit binding context resolution will also work when referencing another element using x:Reference expressions. For example, we can bind the on/off state of a switch to the visibility of a text label like so:

```
  <Switch x:Name="mySwitch" />
  <Label BindingContext="{x:Reference mySwitch}" IsVisible="{Binding IsToggled}"/>
```
When MFractor analyses the {Binding IsToggled} expression, it will evaluate the {x:Reference mySwitch} expression and use the type of mySwitch as the BindingContext (Xamarin.Forms.Switch).

Explicit binding context resolution will always override implicit binding context resolution. If your XAML views are named using the conventions listed above but your page or a view explicitly assigns the BindingContext property then MFractor will use the BindingContext return type instead of the implicit Mvvm relationship.
