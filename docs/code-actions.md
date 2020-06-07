!!! quote "Enhance your developer productivity with contextual refactorings, code generation and utilities"

## Introduction

Code Actions enhance developer productivity by providing tools that allows you to quickly refactor and generate new code from your existing code. MFractor constantly inspects your code and shows suggestions of the most common operations done from the code of code you're writing at that time.

!!! important
    MFractor Code Inspector works entirely locally and doesn't track any of your code.

## Using the Code Actions

MFractor ships with tons of Code Actions to enhance common .NET and Xamarin development tasks and aids you to avoid writing boilerplate code. They are context sensitive, so it will only be presented in places where it made sense to be applied. Code Actions are available to either C# and XAML code.

!!! info
    The section below presents general guidance on how to invoke the Code Actions for different types of source files. Check the documentation of the MFractor Code Action you're interested to use to understand the specific contexts where they can be applied.

### Code Actions for C# Code

The C# Code Actions provides refactorings, code generation wizards and utilities to code written in C#. They are context sensitive and there are several ways they can be invoked. From instance, let's take as an example the [**Generate Interface Implementation** Code Action](csharp/code-actions/generate-interface-implementation.md), that allows you to quickly create a new class that implement the interface you're working with. This Code Action appears when you are editing any C# Interface Code File.

Leave the cursor over the name of the Interface for half a second. Visual Studio will present a little screwdriver icon to the left of the editor, which indicates to the user that there are Code Actions available related to this part of your code. Click the icon and the suggestions will appear:

![Invoking the Generate Interface Implementation Code Action from the IntelliSense Suggestions or Keyboard Shortcut](/img/csharp/code-actions/generate-interface-implementation-01.png)

!!! tip
    The suggestions menu presented from the screwdriver icon is called **Quick Fix** and  can be opened with the `ALT` + `Enter` keyboard shortcut. This shortcut can also be customized from the _Key Bindinds_ section of Visual Studio Preferences.

The Code Actions can also be invoked from the context menu when you right click over a symbol in the code. Given the previous example right click over the same interface name the action will appear under the `Generate` sub-menu:

![Invoking the Generate Interface Implementation Code Action from the Context Menu](/img/csharp/code-actions/generate-interface-implementation-02.png)


### Code Actions for XAML Code

The XAML Code Actions provide refactorings and code generation wizards and utilities to Xamarin.Forms XAML source files. They are context sensitive, but unlike the C# Code Actions, they aren't easily discoverable since the _Quick Fix_ menu isn't available on the current stable of the new XAML Code Editor on Visual Studio for Mac. For this reason, they are only accessible from the context menu.

For instance, let's take the [**Extract XAML Style** Code Action](xamarin-forms/working-with-styles/extracting-styles.md), which allows you to extract property declarations on element to style and refactor that element to reference it. If you right-click over an element declaration that contains one or more property declarations, the `Extract XAML Style` will be available under the `Refactor` sub-menu:

![How to access the Extract Style Code Action using the context menu of the Code Editor](/img/xamarin-forms/extract-style-menu.png)

In the example above, the [**Generate a new View Model for XAML view** Code Action]() would also be available under the `Generate` sub-menu, because the context also applies for this action.
