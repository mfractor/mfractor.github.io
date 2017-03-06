##Code Actions

*Fix issues, refactor, tidy up code and generate C# from your Xaml*

##Introduction
Code actions are shortcuts that manipulate your Xaml or C# code (or both!); they enable you to fix issues, refactor xaml, generate C# code from your views and organise xaml code.

This article describes how to access and use code actions

For a full list of available xaml code actions, see the following articles:

 * [Refactoring Code Actions](tools-in-depth/refactor.md) article.
 * [Generation Code Actions](tools-in-depth/generate.md) article.
 * [Organise Code Actions](tools-in-depth/organise.md) article.
 * [Code Issue Fixes](tools-in-depth/fix.md) article.

##Using Code Actions

MFractor has 4 types of code actions:

 - **Fixes**: Fixes code issues detected by the Xaml analyser.
 - **Generate**: Generates common xaml and C# code.
 - **Refactor**: Rename C# and Xaml symbols from your Xaml document.
 - **Organise**: Tidy up and organise your xaml.

MFractor exposes code actions through 2 methods:

1. Pressing the keyboard shortcut `Alt`+`Return`:

![Accessing code actions using the quick fix menu](/img/forms/quick-fix-menu.gif)

2. Right clicking within the document and selecting a menu action:

![Accessing code actions using the context menus](/img/forms/refactoring-menu.png)

##Code Issue Fixes

Code issue fixes are available when an analyser from the [Xaml Analysis Engine](/xamarin-forms/analysis.md) detects a code issue and it marks that code section with a yellow underline.

You can action a code fix by right-clicking on the yellow-underlined code section, opening the **Fix** menu and then selecting the fix you'd like to action:

![Using Fix Refactorings](/img/forms/refactoring-fix.gif)

To view a complete list of available code issue fixes, visit the [Code Issue Fix](/xamarin-forms/tools-in-depth/fix.md) document.

##Code Generation

Code generation operations allow you to quickly build boilerplate code that you'd otherwise have to hand code yourself.

For example, you could:

 - Generate resource dictionaries for view elements.
 - Implement all missing bindings in bulk using the **Implement View Model** code generator.

![Using Generate Refactorings](/img/forms/refactoring-generate.gif)

To view a complete list of available code generation refactorings, visit [Refactorings - Generate](/xamarin-forms/tools-in-depth/generate.md).

##Code Refactoring

The refactorings within the **Refactor** allow you to manipulate Xaml and .NET symbols while within your Xaml document. These refactorings typically take user input and perform a change on the Xaml and/or C# based on that input.

For example, you could:

 - Take the attribute `Text="Hello Xamarin Forms!"` and extract the value `"Hello Xamarin Forms!"` into the views binding context; replacing the attribute with `Text="{Binding Message}"` and creating the C# property `public string Message { get; set; } = "Hello Xamarin Forms!"`.
 - Edit a color literal using the color picker dialog.

![Using Refactor Refactorings](/img/forms/refactoring-refactor.gif)

To view a complete list of available refactoring operations, visit [Refactorings - Refactor](/xamarin-forms/tools-in-depth/refactor.md).

##Code Organisation

The refactorings within the **Organise** are used to quickly format your xaml code. These refactorings are useful to keep your xaml tidy and easy to understand.

For example, you could:

 - Sort all attributes on a node by name and namespace.
 - Collapse or expand the attribute on a node onto separate or the same lines.
 - Expand or collapse the closing tag on a node.

![Using Organise Refactorings](/img/forms/refactoring-organise.gif)

To view a complete list of available code organisation operations, visit [Refactorings - Organise](/xamarin-forms/tools-in-depth/organise.md).
