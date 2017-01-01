
#Configuring A Binding Context

*Power the refactoring engine and xaml analyser by targeting a binding context*

##Introduction
In Mvvm architected applications, views use a **Binding Context** to display and transfer data between the application logic layer and the view layer with minimal dependencies. This is accomplished through **data binding**; properties on a view are bound to properties on a backing object through binding mechanisms allowing two-way data transfer between the UI and application logic. For a full tutorial on Mvvm architecture, please Microsofts [**The Mvvm Pattern**](https://msdn.microsoft.com/en-us/library/hh848246.aspx) article.

When working with Xaml, we can specify a binding context to activate . If MFractor can resolve a binding context for a Xaml view, it will consume binding expressions and analyse them.


This is tremendously beneficial as MFractor will pickup runtime errors and high-light them directly within the Xaml editor.

We can specify a binding context *explicitly* via in inline Xaml expression or *implicitly* through the use of common MVVM naming conventions.

##Explicit Binding Context Resolution
Let's start with explicitly providing a binding context to MFractor.

In Xamarin.Forms, all views have the property `BindingContext`; this specifies the object that a view should data-bind with. When coding with Xaml, we can use the `x:Static` markup extension to reference a static C# property and explicitly provide an instance of a C# class as the binding context:

```
 <Entry BindingContext="{x:Static local:MyStaticClass.MyStaticProperty}"/>
```

This is known as the *View Model Locator Pattern*. We implement a static class named `ViewModelLocator` and use a static, readonly property to return an instance of the object we want our Xaml view to data-bind with. Historically the *View Model Locator Pattern* has been used to provide design time data to the Xamarin.Forms Xaml previewer. For a deeper insight into this pattern, read James Montemagnos excellent [View Model Locator](http://motzcod.es/post/143702671962/xamarinforms-xaml-previewer-design-time-data) article.

For example, given a Xaml page named `LoginPage`, we could explicitly provide an instance of `LoginViewModel` as the binding context like so:

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

When MFractor begins analysis on LoginPage.xaml it will check if any `BindingContext` properties have been assigned to. As the root `ContentPage` assigns a binding context, it will inspect the value component of the `BindingContext` attribute, check if it is a Xaml expression and then evaluate it for the return type.

For the `{x:Static local:ViewModelLocator.LoginViewModel}` expression, MFractor will resolve the `ViewModelLocator` class in the `local` namespace and then grab the C# type of the `LoginViewModel` property. This informs MFractor that the page will be bound to a `LoginViewModel` instance and therefore to analyse all `Binding` expressions against the `LoginViewModel` type.

Explicit binding context resolution will also work when referencing another element using `x:Reference` expressions. For example, we can bind the on/off state of a switch to the visibility of a text label like so:

```
  <Switch x:Name="mySwitch" />
  <Label BindingContext="{x:Reference mySwitch}" IsVisible="{Binding IsToggled}"/>
```

When MFractor analyses the `{Binding IsToggled}` expression, it will evaluate the `{x:Reference mySwitch}` expression and use the type of mySwitch as the BindingContext (Xamarin.Forms.Switch).

##Implicit Binding Context Resolution
In addition to explicit binding context resolution, MFractor will attempt to infer the relationship between your view models and xaml views via *implicit binding context resolution*. This is done by looking for classes and Xaml views that share a common naming convention.

Let's consider the following files:

 * **LoginPage.xaml** - The xaml view.
 * **LoginPage.xaml.cs** - The code behind for the xaml view.
 * **LoginViewModel** - The a C# class that is the view model for the LoginPage view.

![mvvm relationships](/img/forms/implicit-mvvm-relationship.png)

Because these pages share the prefix **Login** and each has a distinct file extension or suffix, we can infer the following relationships:

  * The *.xaml* extension denotes that **LoginPage.xaml** is a xaml view.
  * The *.xaml.cs* extension and the *LoginPage* component denotes that **LoginPage.xaml.cs** is the code behind implementation **LoginPage** view.
  * The **ViewModel** suffix implies that **LoginViewModel** is a view model. When *ViewModel* is removed from *LoginViewModel* and *Page* is removed from *LoginPage*, the **Login** component implies that the **LoginViewModel** is related to the **LoginPage** xaml view and it's code behind file.

MFractor uses these common naming conventions of Page.xaml, Page.xaml.cs and ViewModel to decide that **LoginViewModel** will probably be the BindingContext for **LoginPage**. It will then

The following suffixes are supported for Xaml views:

 * **Page**: EG LoginPage.xaml <-> LoginViewModel
 * **View**: EG LoginView.xaml <-> LoginViewModel

Explicit binding context resolution will **always** override implicit binding context resolution. If your xaml views are named using the conventions listed above but your page or a view explicitly assigns the `BindingContext` property then MFractor will use the `BindingContext` return type instead of the implicit Mvvm relationship.

##Data Template Binding Context Resolution
Data templates are used to provide a nested Xaml view to a view that displays many occurances of that view. For example, a ListView uses a `DataTemplate` to specify the view appearance of each instance provided through the `ItemsSource` property.

MFractor will attempt to infer the BindingContext for a data templates view by resolving the `ItemsSource` property on the wrapping view.

Consider the following code:

```
  <ListView ItemsSource="{Binding Contacts}">
      <ListView.ItemTemplate>
        <DataTemplate>
          <TextCell Text="{Binding DisplayName}" />
        </DataTemplate>
      </ListView.ItemTemplate>
  </ListView>
```

The inner `DataTemplate` has a `TextCell` where the `Text` property is provided by the binding expression `{Binding DisplayName}`. To analyse this expression, MFractor requires a binding context; MFractor will walk out to the encapsulating view (ListView), locate the `ItemsSource` property and evaluate the expression.

When the return type is an `IEnumerable` or array, MFractor unwraps the generic or array and grabs the inner type. This provides the binding context type for the binding expressions used within the data template.

##Summary
In summary, we've learnt that MFractor will use the binding context to power the Xaml analyser and navigation improvements.

 * Binding expressions require a binding context to be analysed.
 * We can explicitly specify a binding context by assigning the `BindingContext` property of any Xaml element.
 * When we name our code files using the Page.xaml, Page.xaml.cs and ViewModel convention, MFractor will assume an implicit MVVM relationship.
 * Data templates use the return type of the wrapping views `ItemSource` property.
