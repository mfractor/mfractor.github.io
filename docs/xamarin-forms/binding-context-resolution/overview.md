# Binding Context Resolution

MFractor includes many features to make working with XAML and the MVVM pattern easier. To power these features, MFractor is capable of intelligently resolving a XAML files binding context (even when none is specified) and can also evaluate markup expressions (such as x:Static or Binding expressions) or can walk through the XAML hierarchy to evaluate the correct binding context for a given node.

So, what is a binding context?

When using the Model-View-ViewModel architecture pattern, views use a Binding Context to display and transfer data between the application logic layer and the view layer with minimal dependencies. This is accomplished through data binding; properties on a view are bound to properties on a backing object through binding mechanisms allowing two-way data transfer between the UI and application logic. For a full tutorial on Mvvm architecture, please [Microsofts The MVVM Pattern](https://docs.microsoft.com/en-us/previous-versions/msp-n-p/hh848246(v=pandp.10)?redirectedfrom=MSDN) article.

MFractor supports several methods of binding context resolution:

 * [Binding Context Evaluation](binding-context-evaluation.md)
 * [Automatic View Model Detection](automatic-viewmodel-detection.md)
 * [Using the DesignTimeBindingContextAttribute](design-time-binding-context-attribute.md)
 * [DataTemplate Binding Context Resolution](data-template-binding-context-resolution.md)
 * [Cross Project Binding Context Resolution](automatic-viewmodel-detection.md)
