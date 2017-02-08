**WORK IN PROGRESS**

##Refactoring And Code Generation

*Fix issues, tidy up code and generate C# from your Xaml in just a few clicks*

##Introduction

For a full list of available refactoring and code generation actions, see the [Tools In-Depth - Refactoring](tools-in-depth/refactorings.md) article.

##Accessing Code Refactoring
The refactoring menus can be accessed by right clicking on particular areas within the Xaml document:

![Accessing the refactoring menus](/img/forms/refactoring-menus.gif)

MFractor will populate this

The areas a refactoring activates depends on it's scope:

 - **Document**: Document scoped refactorings appear when you click anywhere in the document. The *Implement View Model* refactoring is an example of a document level refactoring.
 - **Xml Node**: Xml node scoped refactorings appear when you click on an Xml node declaration; for example `<MyNode/>`. The *Sort Attributes* organize refactoring is an example of a xml node level refactoring.
 - **Xml Attributes**: Xml attribute scoped refactorings appear when you click on an Xml attribute declaration or value; for example `MyAttribute="MyValue"`. The *Extract Into Property Binding* refactoring is an example of a xml attribute level refactoring.

Each refactoring within the [Refactorings](/xamarin-forms/tools-in-depth/refactorings.md) article lists the **Scope** it will execute in and then describes the conditions the operation activates within.

##Code Issue Fixes

Code issue fixes are available when an analyser from the [Xaml Analysis Engine](/xamarin-forms/analysis.md) detects a code issue and it marks that code section with a yellow underline.

You can action a code fix by right-clicking on the yellow-underlined code section, opening the **Fix** menu and then selecting the fix you'd like to action:

To view a complete list of available code issue fixes, visit the [analysers](/xamarin-forms/tools-in-depth/analysers.md) document.

##Code Generation

Code generation operations allow you to quickly build boilerplate code that you'd otherwise have to hand code yourself.

For example, you could:

 - Generate resource dictionaries for view elements.
 -

To view a complete list of available code generation refactorings, visit [Refactorings - Generate](/xamarin-forms/tools-in-depth/refactorings.md#generate).

##Code Refactoring

Code refactoring operations allow you to manipulate the names of symbols in both  your Xaml file in ; sometimes these refactoring operations can



To view a complete list of available refactoring operations, visit [Refactorings - Refactor](/xamarin-forms/tools-in-depth/refactorings.md#refactor).

##Code Organisation

The refactorings suggested within the  the

To view a complete list of available code organisation operations, visit [Refactorings - Organise](/xamarin-forms/tools-in-depth/refactorings.md#refactor).
