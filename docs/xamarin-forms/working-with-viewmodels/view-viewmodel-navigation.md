!!! quote "Navigation shortcuts to switch among the core components of the MVVM pattern"

## Introduction

The [Model-View-ViewModel (MVVM)](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/enterprise-application-patterns/mvvm) is a modern architectural pattern for building applications based on XAML views. It allows us separate Model and View logic from View declaration while keeping the code clean and testable. This pattern is widely used in Xamarin.Forms applications and by convention each View is composed of 3 files:

* The **XAML View** (`.xaml`) file where we describe our UI declaratively
* The View's **code-behind** (`.xaml.cs`) file 
* The **View Model**, a C# class that provide View logic through properties and commands that are bound to the view using the data-binding engine

The View file and its code-behind are kept together and automatically nested by Visual Studio. View Model are usually kept in a separate folder (commonly named `ViewModels`) for better organization of the project files.  
!!! important
    Please read the [Binding Context Resolution documentation](/xamarin-forms/binding-context-resolution/overview.md) to understand how MFractor associates view models with XAML views.

When working on a View you frequently switch back and forth this 3 files. Manually switching from the Solution Explorer or the open tabs is tedious and time-consuming. MFractor adds several shortcuts for navigating among those files.

## Using the Navigation Shortcuts

The shortcuts becames available contextually when one of the 3 files that compose a group is open and active on the code editor. Shortcuts are available on the context menu of editor:

![](/img/xamarin-forms/mvvm-navigation-mac-context.png) ![](/img/xamarin-forms/mvvm-navigation-win-context.png)

There are also very convenient and easy to remember keyboard shortcuts available:

Navigation Shortcuts    | <i class="fab fa-apple fa-lg"></i> | <i class="fab fa-windows fa-lg"></i> 
----------  |:--------:   |:-------:
Go-To View Model  | **⌥ + ⇧ + 1** | **Alt + 1**
Go-To Code-Behind  | **⌥ + ⇧ + 2** | **Alt + 2**
Go-To View    | **⌥ + ⇧ + 3** | **Alt + 3**

!!! tip
    Use the [MVVM Wizard](mvvm-wizard.md) to create a XAML View with its corresponding code-behind and View Model files all at once, and using standards and conventions that you can set on project basis.