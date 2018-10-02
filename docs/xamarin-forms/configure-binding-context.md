
##Configuring A Binding Context

*Power the code action engine and XAML analyser by targeting a binding context*

##Introduction
MFractor includes many features to make working with XAML and the MVVM pattern easier. To power these features, MFractor is capable of intelligently resolving a XAML files binding context (even when none is specified) and can also evaluate markup expressions (such as x:Static or Binding expressions) or can walk through the XAML hierarchy to evaulate the correct binding context for a given node.

So, what is a binding context?

When using the Model-View-ViewModel architecture pattern, views use a **Binding Context** to display and transfer data between the application logic layer and the view layer with minimal dependencies. This is accomplished through **data binding**; properties on a view are bound to properties on a backing object through binding mechanisms allowing two-way data transfer between the UI and application logic. For a full tutorial on Mvvm architecture, please Microsofts [**The MVVM Pattern**](https://msdn.microsoft.com/en-us/library/hh848246.aspx) article.

MFractor supports two methods of binding context resolution: we can specify a binding context [*explicitly*](#explicit-binding-context-resolution) via in inline XAML expression or [*implicitly*](#implicit-binding-context-resolution) through the use of common MVVM naming conventions.

##Implicit Binding Context Resolution

MFractor uses *implicit binding context resolution* to infer the relationship between your view models and XAML views. This is done by looking for classes and XAML views that follow industry standard naming convention.

Let's consider the following files:

 * **LoginPage.xaml** - The XAML view.
 * **LoginPage.xaml.cs** - The code behind for the XAML view.
 * **LoginViewModel** - The a C# class that is the view model for the LoginPage view.

![mvvm relationships](/img/forms/implicit-mvvm-relationship.png)

Because these pages share the prefix **Login** and each has a distinct file extension or suffix, MFractor assumes the following relationships:

  * The *.xaml* extension denotes that **LoginPage.xaml** is a xaml view.
  * The *.xaml.cs* extension and the *LoginPage* component denotes that **LoginPage.xaml.cs** is the code behind implementation **LoginPage** view.
  * The **ViewModel** suffix implies that **LoginViewModel** is a view model. When *ViewModel* is removed from *LoginViewModel* and *Page* is removed from *LoginPage*, the **Login** component implies that the **LoginViewModel** is related to the **LoginPage** XAML view and it's code behind file.

MFractor uses these common naming conventions of Page.xaml, Page.xaml.cs and ViewModel to decide that **LoginViewModel** will probably be the BindingContext for **LoginPage**. The `Page` <-> `ViewModel` naming convention is used by several popular MVVM frameworks such as Prism and FreshMVVM.

The following suffixes are supported for XAML views:

 * **Page**: EG LoginPage.xaml <-> LoginViewModel
 * **View**: EG LoginView.xaml <-> LoginViewModel

The following suffixes are supported for View Models.

 * **ViewModel**: EG LoginPage.xaml <-> LoginViewModel
 * **PageModel**: EG LoginView.xaml <-> LoginPageModel
 * **PageViewModel**: EG LoginView.xaml <-> LoginPageViewModel
 * **Model**: EG LoginView.xaml <-> LoginModel
 * **VM**: EG LoginView.xaml <-> LoginVM
 * **PageVM**: EG LoginView.xaml <-> LoginPageVM

## Explicit Binding Context Resolution
In Xamarin.Forms, all views have the property `BindingContext`; this specifies the object that a view should data-bind with. When coding with XAML, we can use the `x:Static` markup extension to reference a static C# property and explicitly provide an instance of a C# class as the binding context:

```
 <Entry BindingContext="{x:Static local:MyStaticClass.MyStaticProperty}"/>
```

This is known as the *View Model Locator Pattern*. We implement a static class named `ViewModelLocator` and use a static, readonly property to return an instance of the object we want our XAML view to data-bind with. Historically the *View Model Locator Pattern* has been used to provide design time data to the Xamarin.Forms XAML previewer. For a deeper insight into this pattern, read James Montemagnos excellent [View Model Locator](http://motzcod.es/post/143702671962/xamarinforms-xaml-previewer-design-time-data) article.

For example, given a XAML page named `LoginPage`, we can explicitly provide an instance of `LoginViewModel` as the binding context like so:

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

When MFractor starts analysis on LoginPage.xaml, it will check if any `BindingContext` properties have been assigned to. As the root `ContentPage` assigns a binding context, it will inspect the value component of the `BindingContext` attribute, check if it is a XAML expression and then evaluate it for the return type.

For the `{x:Static local:ViewModelLocator.LoginViewModel}` expression, MFractor will resolve the `ViewModelLocator` class in the `local` namespace and then grab the C# type of the `LoginViewModel` property. This informs MFractor that the page will be bound to a `LoginViewModel` instance and therefore to analyse all `Binding` expressions against the `LoginViewModel` type.

Explicit binding context resolution will also work when referencing another element using `x:Reference` expressions. For example, we can bind the on/off state of a switch to the visibility of a text label like so:

```
  <Switch x:Name="mySwitch" />
  <Label BindingContext="{x:Reference mySwitch}" IsVisible="{Binding IsToggled}"/>
```

When MFractor analyses the `{Binding IsToggled}` expression, it will evaluate the `{x:Reference mySwitch}` expression and use the type of mySwitch as the BindingContext (Xamarin.Forms.Switch).

Explicit binding context resolution will **always** override implicit binding context resolution. If your XAML views are named using the conventions listed above but your page or a view explicitly assigns the `BindingContext` property then MFractor will use the `BindingContext` return type instead of the implicit Mvvm relationship.

##Data Template Binding Context Resolution
Data templates are used to provide a nested XAML view to a view that displays many occurrences of that view. For example, a ListView uses a `DataTemplate` to specify the view appearance of each instance provided through the `ItemsSource` property.

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

## Cross Project Binding Context resolution

If your views and view models are in separate projects and you'd like to use implicit MVVM resolution, you'll need to give MFractor a nudge in the right direction.

Unfortunately, it is too expensive to scan the solution to match view models to pages; the scan takes anywhere between 10's to 100's of milliseconds in a moderately sized solution. Therefore, for efficiency reasons, you need to use an MFractor configuration to enable cross-project MVVM resolution.

To make MFractor use View Models in a project separate to your views, you'll need to create an MFractor config for each project.

In the project that contains your views, create a file named app.mfc.xml with the following content:

```
<?xml version="1.0" encoding="UTF-8" ?>
<mfractor>
    <configure id="com.mfractor.configuration.forms.mvvm_resolution">
        <property name="ViewModelsProjectName" value="TODO: Insert the name of your view models project as it appears in the solution explorer"/>
    </configure>
</mfractor>  
```

In the project that contains your view models, create a file named app.mfc.xml with the following content:

```
<?xml version="1.0" encoding="UTF-8" ?>
<mfractor>
    <configure id="com.mfractor.configuration.forms.mvvm_resolution">
        <property name="ViewsProjectName" value="TODO: Insert the name of your views project as it appears in the solution explorer"/>
    </configure>
</mfractor>
```

##Summary
In summary, we've learnt that MFractor will use the binding context to power the XAML analyser and navigation improvements.

 * Binding expressions require a binding context to be analysed.
 * We can explicitly specify a binding context by assigning the `BindingContext` property of any XAML element.
 * When we name our code files using the Page.xaml, Page.xaml.cs and ViewModel convention, MFractor will assume an implicit MVVM relationship.
 * Data templates use the return type of the wrapping views `ItemSource` property.
 * We can setup a cross project  templates use the return type of the wrapping views `ItemSource` property.
