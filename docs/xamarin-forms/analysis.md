**WORK IN PROGRESS**

##Xaml Analysis

*Use the Xaml analyser to spend less time debugging and see Xaml errors in-editor*

##Introduction
It's common that xaml issues in Xamarin.Forms applications are undetected until runtime or worse, when sent out to a client. MFractor solves this by detecting Xaml issues *immediately* and then marking them inside the xaml editor with a concise error message.

Bye bye Xaml bugs! 👋

##Under The Hood

Let's take a look at what happens "under the hood" in MFractor when you open a Xaml document:

![xaml analysis flow](/img/forms/xaml-analysis-flow.png)

When you open a Xaml file that's part of a .NET project, Visual Studio Mac notifies MFractor that a new Xaml document was opened for editing. MFractor will  inject the Xaml analyser into the Xaml editor and consume the Xaml document.

Once MFractor has a copy of the Xaml DOM, it *symbolicates* the xaml document. In this step all Xaml nodes are resolved to their corresponding .NET class, all attributes are resolved to properties, fields or methods and all markup extension expressions are parsed.

It may take a little while for MFractor to parse and symbolicate the Xaml DOM the first time a solution opens. While it's consuming the Xaml document, you might see a tooltip informing you that MFractor is not quite ready to analyse the document:

![xaml document parsing](/img/forms/doc-parsing.png)

When the Xaml document has been parsed and symbolicated, MFractor will analyse the document for a range of code issues. Any issues that are found are marked as either

A full list of available Xaml analysers can be found at [Xamarin.Forms Xaml Analysers](/code-analysis/xaml.md).

Whenever you edit a Xaml code file, MFractor will cancel any running analysis, re-parse and symbolicate the document and then re-run the xaml analyser against your xaml.

##Code Fixes
When MFractor detects a code issue, it is usually able to suggest a fix as well. When MFractor can fix an issue, it will display within the code issue tooltip that fixes are available:

![Xamarin.Forms XAML code issue](/img/forms/code-issue.png)

You can action this fix by right clicking on the text area marked by the coloured squiggle, navigating to **Fix** and then choosing your code fix. Alternatively, click on the affected text area and press `Alt + Return` to open the quick fix menu.

![Xamarin.Forms XAML code issue fixing](/img/forms/fix-code-issue.gif)

## Markup Extension Expression Analysis

When MFractor encounters a markup extension, an attribute value that have `{ ... }` as it's content, it will consume, evaluate and analyse the expression.

MFractor supports analysis of the following markup extensions:

 * `x:Reference`
 * `x:Static`
 * `Binding`
 * `StaticResource` -> Limited support

##Binding Expression Analysis

MFractor supports analysis of binding markup extensions; this is a powerful feature that can prevent runtime bugs by checking that properties exist on a binding context, that return and input types match and match more:

![Inspecting a binding expression for a return type mis-match](/img/forms/binding-expression-analysis.png)

For binding expressions to be analysed, MFractor must be able to resolve a binding context for the XAML document. For applications that use the `Page` <-> `ViewModel` naming convention, binding contexts will automatically resolve when the XAML document is opened.

To learn how to configure a binding context for a XAML document, refer to the [Configuring A Binding Context](/xamarin-forms/configure-binding-context.md) documentation.
