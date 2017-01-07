##Implementing View Models

*Generate properties and view models from Xaml to C# using code fixes and the Implement View Model refactoring*

##Introduction

In Xamarin.Forms apps, we design our applications using the Model - View - ViewModel design pattern; relying on binding mechanisms to mirror data back and forth between the view and view model.

We accomplish this data-transfer behaviour through the [Binding Markup Extension](https://developer.xamarin.com/api/type/Xamarin.Forms.Binding/). This is a Xamarin.Forms API that implements the [IMarkupExtension interface](https://developer.xamarin.com/api/type/Xamarin.Forms.Xaml.IMarkupExtension/); it reflects changes from the binding context to the view and vice-versa.

We use the binding markup extension syntax in our Xaml views:

**LoginPage.xaml.cs**
```
<Entry Text="{Binding Username}"/>
```

**LoginViewModel.cs**
```
public class LoginViewModel
{
  public string Username { get; set; }
}
```

In the above example, `{Binding Username}` points to a public property on the `LogingPage`s binding context, the `LoginViewModel`. When the user enters text, changes are automatically applied into the `Username` property.

But what if we introduced a new `Entry` bound to `Password`, a property that doesn't exist on the

**LoginPage.xaml.cs**
```
<Entry Text="{Binding Username}"/>
<Entry Text="{Binding Password}"/>
```

Provided we have configured the views binding context correctly, the [Xaml analyser](/xamarin-forms/analysis.md) will recognise this is a runtime bug and mark it:

![](/img/tutorials/implementing-view-models/missing-binding.png)

Great! Now to fix it we just need to...

 * Navigate to our view model...
 * Start typing out the property name...
 * Jump back to the Xaml to figure out its binding type...
 * Go back to the view model and write the type...
 * Write out the getter and setter.

Whew! That was a bit of work and it's mostly boilerplate coding. Luckily there's a better way.

To improve the workflow of creating properties for a view, MFractor includes the following shortcuts:

 * [Fix missing binding](#issues-fixing-on-missing-bindings)
 * [Implement view model](#the-implement-viewmodel-refactoring)

Let's examine 2 methods of implementing the missing property using MFractor

##Issue Fixing on Missing Bindings
MFractor provides


![](/img/tutorials/implementing-view-models/fix-missing-bindings.gif)

##The Implement ViewModel Refactoring
Another way to generate properties for a view model is to use the **Implement View Model** refactoring. This shortcut will collect *all* missing binding expressions and generate them all onto the binding context:


![](/img/tutorials/implementing-view-models/implement-view-model.gif)


We can

There are often cases when a binding context isn't specified [explicitly ](/xamarin-forms/configure-binding-context.md#explicit-binding-context-resolution) and can't be inferred [implicitly](/xamarin-forms/configure-binding-context.md#implicit-binding-context-resolution) cannot infer what the appropriate view model is...

For example, you have just started to build a Xaml view and haven't

In these instances we

MFractor also includes a global shortcut to

##Summary

In this tutorial we learnt:

 * We need a binding context to activate binding expression analysis and issue fixing.
 * MFractor can generate properties
