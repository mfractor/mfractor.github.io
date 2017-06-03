## Code Actions

*How to use MFractors code fixes, actions and refactorings*

## The Essentials

MFractor includes a suite of code actions to organise, refactor and generate source code.

To use MFractors code actions:

 * Press `Alt + Return` within a C#, XAML or Android Resource document.
 * Right click and select `Quick Fix` in a C# document.

![Using MFractors code action suite](/img/code-actions/using-code-actions.gif)

## C# Code Actions

MFractors C# code action suite integrates directly into Visual Studio Macs existing code action suite; you can simply press `Alt+Return` to view available code actions and then `Return` to apply a code action.

[You can view the full list of MFractors C# code actions here](/code-actions/csharp.md)

## XAML Code Actions

XAML code actions can be actioned when the current open is a Xamarin.Forms XAML document.

In addition to being accessible through the quick fix menu, XAML code actions can be action  

The XAML code actions come in 4 types:

 * [Fix](/code-actions/xaml/fix.md): Fixes code issues. This menu is only available when actioned over a code issue (yellow or red squiggle).
 * [Organise](/code-actions/xaml/organise.md): Organises XAML code. For example, sorting attributes or formatting a document.
 * [Refactor](/code-actions/xaml/refactor.md): Refactors XAML code: For example, renaming XAML namespaces or extracting property values into a view model.
 * [Generate](/code-actions/xaml/generate.md): Generates C# or XAML code. For example, implementing view models or creating resource dictionaries.

## Android Resource Code Actions

Android code actions can be actioned when the current open is an Android resource; for example a menu, values or xml configuration file.

Disclaimer: Support for Android resource code actions is currently very limited. This feature-set will be added to over time.
