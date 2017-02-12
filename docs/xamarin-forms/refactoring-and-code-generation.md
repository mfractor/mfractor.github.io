**WORK IN PROGRESS**

##Refactoring And Code Generation

*Fix issues, tidy up code and generate C# from your Xaml in just a few clicks*

##Introduction

For a full list of available refactoring and code generation actions, see the [Tools In-Depth - Refactoring](tools-in-depth/refactorings.md) article.

##Accessing Code Refactoring
The refactoring menus can be accessed by right clicking on particular areas within the Xaml document:

![Accessing the refactoring menus](/img/forms/refactoring-menus.gif)

MFractor will populate the context with 4 types of refactorings:

 - **Fix**: Fixes code issues detected by the Xaml analyser.
 - **Generate**: Generates common xaml and C# code.
 - **Refactor**: Rename C# and Xaml symbols from your Xaml document.
 - **Organise**: Tidy up and organise your xaml.

The areas a refactoring activates depends on it's scope:

 - **Document**: Document scoped refactorings appear when you click anywhere in the document. The *Implement View Model* refactoring is an example of a document level refactoring.
 - **Xml Node**: Xml node scoped refactorings appear when you click on an Xml node declaration; for example `<MyNode/>`. The *Sort Attributes* organize refactoring is an example of a xml node level refactoring.
 - **Xml Attributes**: Xml attribute scoped refactorings appear when you click on an Xml attribute declaration or value; for example `MyAttribute="MyValue"`. The *Extract Into Property Binding* refactoring is an example of a xml attribute level refactoring.

Each refactoring within the [Refactorings](/xamarin-forms/tools-in-depth/refactorings.md) article lists the **Scope** it will execute in and then describes the conditions the operation activates within.

##Code Issue Fixes

Code issue fixes are available when an analyser from the [Xaml Analysis Engine](/xamarin-forms/analysis.md) detects a code issue and it marks that code section with a yellow underline.

You can action a code fix by right-clicking on the yellow-underlined code section, opening the **Fix** menu and then selecting the fix you'd like to action:

![Using Fix Refactorings](/img/xamarin-forms/refactoring-fix.gif)

To view a complete list of available code issue fixes, visit the [analysers](/xamarin-forms/tools-in-depth/analysers.md) document.

##Code Generation

Code generation operations allow you to quickly build boilerplate code that you'd otherwise have to hand code yourself.

For example, you could:

 - Generate resource dictionaries for view elements.
 - Implement all missing bindings in bulk using the **Implement View Model** code generator.

![Using Generate Refactorings](/img/xamarin-forms/refactoring-generate.gif)

To view a complete list of available code generation refactorings, visit [Refactorings - Generate](/xamarin-forms/tools-in-depth/refactorings.md#generate).

##Code Refactoring

The refactorings within the **Refactor** allow you to manipulate Xaml and .NET symbols while within your Xaml document. These refactorings typically take user input and perform a change on the Xaml and/or C# based on that input.

For example, you could:

 - Take the attribute `Text="Hello Xamarin Forms!"` and extract the value `"Hello Xamarin Forms!"` into the views binding context; replacing the attribute with `Text="{Binding Message}"` and creating the C# property `public string Message { get; set; } = "Hello Xamarin Forms!"`.
 - Edit a color literal using the color picker dialog.

![Using Refactor Refactorings](/img/xamarin-forms/refactoring-refactor.gif)

To view a complete list of available refactoring operations, visit [Refactorings - Refactor](/xamarin-forms/tools-in-depth/refactorings.md#refactor).

##Code Organisation

The refactorings within the **Organise** are used to quickly format your xaml code. These refactorings are useful to keep your xaml tidy and easy to understand.

For example, you could:

 - Sort all attributes on a node by name and namespace.
 - Collapse or expand the attribute on a node onto separate or the same lines.
 - Expand or collapse the closing tag on a node.

![Using Organise Refactorings](/img/xamarin-forms/refactoring-organise.gif)

To view a complete list of available code organisation operations, visit [Refactorings - Organise](/xamarin-forms/tools-in-depth/refactorings.md#refactor).
