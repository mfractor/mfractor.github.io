##Mvvm Navigation

*Quickly move between Xamarin.Forms Views, View Models and Code behind classes using Mvvm navigation shortcuts*

##Overview
Xamarin.Forms is cross platform toolkit that allows developers to build iOS, Android and Windows apps and maximise code reuse across platforms. Xamarin.Forms also facilitates shared UI code through the use of an xml based view markup langauge named Xaml.

Developers build their UI views in Xaml and Xamarin.Forms then inflate the view into it’s native implementation.

Alongside shared UI code, Xamarin.Forms uses the Model – View – View Model (Mvvm) design pattern to seperate a UI definition it’s from state/behaviour code.

The Mvvm design pattern is a great for maintainabilty and code clarity however developers can spend a lot of time manually nagivating between Xaml views and an associated view model.

MFractor adds several navigation shortcuts to speed up developers.

Getting Started
In this article we will use MFractor to navigate between a Xaml UI definition, it’s code behind class and its associated view model.

We assume the following:

 * A Xamarin Studio 6.0 installation.
 * MFractor 2 installed into Xamarin Studio. Install it here: www.mfractor.com/download
 * A familarity with the Xamarin.Forms; particularly building UIs with Xaml and the Model – View – View Model design pattern.
 * The MFractor For Xamarin.Forms sample project downloaded and open in Xamarin Studio.

##Views, Code Behind classes and ViewModels
Let’s start by examining the MFractor For Xamarin.Forms sample project. Open it up in Xamarin Studio and take a look at the project structure:

MFractor For Xamarin.Forms Project

The project itself is trivial; it has a single xaml page with a code behind class and 2 view view models; WelcomeViewModel and GoodbyeViewModel. Notice that this project appends Xaml views with with “Page” and view models with “ViewModel”.

Before we get started learning how to use the Mvvm navigation shortcuts, let’s understand the conventions that MFractor uses to drive the navigation.

###The “Page/View" and "ViewModel" naming convention

In Xamarin.Forms, the de-facto naming convention is to append views with Page or View and view models are appended with ViewModel.

This naming standard implies that the WelcomePage and the WelcomeViewModel are associated; if we stripped off Page and ViewModel from the file names then both would be named Welcome. This implicit relationship makes the codebase easier to understand by conforming to industry standards.

MFractor notices this implicit relationship; if a view and a view model within the same assembly are named like this, a MFractor activates shortcuts between the view, it’s code behind and the associated view model.

If developers don’t want this implicit relationship or their Views/View Models are in seperate assemblies, they may explicitly specify the binding context in the view’s Xaml using the View Model Locator pattern.

###The ViewModelLocator Pattern

The ViewModelLocator pattern is a static class used to specify the BindingContext of a Xaml view for design time previewing. James Montemagno re-introduced this concept in his blog post for the Xaml Previewer.

Developers implement a static class named ViewModelLocator that exposes a static instance of their view models:

```
public static class ViewModelLocator
{
    static MyViewModel _myViewModel;
    public static MyViewModel MyViewModel => _myViewModel ?? (_myViewModel = new MyViewModel());
}
```

This static instance is then bound to the Xaml’s binding context via an x:Static expression:

```
    xmlns:design="clr-namespace:MyAppNamespace;assembly=MyApp"
    BindingContext="{x:Static design:ViewModelLocator.MyViewModel}"
```

When the BindingContext for a view is explicitly defined, MFractor will honor this relationship and route all Mvvm navigation to the view model class declaration defined by the ViewModelLocator.

For the sample project, we could retarget the WecomePage to link with the GoodbyeViewModel by exposing a static instance through the ViewModelLocator and referencing it using the BindingContext:

**C#**

```
public static class ViewModelLocator
{
    static GoodbyeViewModel _goodebye;
    public static GoodbyeViewModel GoodbyeViewModel => _goodebye ?? (_goodebye = new GoodbyeViewModel());
}
```

**Xaml**

```
    xmlns:design="clr-namespace:MFractorForForms;assembly=MFractorForForms"
    BindingContext="{x:Static design:ViewModelLocator.GoodbyeViewModel}"
```

##Fluid Mvvm Navigation
Now that we understand how MFractor links the Mvvm code files, let’s get to know the Mvvm navigation shortcuts.

Open up the WelcomePage.xaml and right click in the middle of the editor:

###Mvvm Shortcuts

There are 3 Mvvm navigation shortcuts in MFractor:

 * Go To Code-Behind Class: Jumps you to the code behind class related to a view or view model
 * Go To View Model: Jumps you to the view model related to a view or code behind class.
 * Go To Xaml View: Jumps you to the xaml view related to a view model or code behind class.

We can use these short-cuts to quickly navigate around these 3 files:

Or we can use an xStatic expression that uses the ViewModelLocator to target a different view model implementation:

###Custom Binding Context

Now the Go To View Model shortcut will instead jump to the class type used by the BindingContext rather than the implicit association.

##Summary

We’ve learnt how to use MFractors Mvvm navigation shortcuts to quickly move between the View, Code Behind Class and View Model

To continue learning to use MFractor, visit our documentation page.
