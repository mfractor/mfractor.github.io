!!! quote "Generate a new using statement from a qualified type usage"

## Introduction

In C#, a *qualified type* refers to the usage of a type (such as a class or interface) that also includes the namespace.

For example, the following type usages are all qualified types:

```
System.IO.FileInfo fileInfo; // Qualified type is 'System.IO.FileInfo'
var myTask = System.Threading.Tasks.Task.Run(); // Qualified type is 'System.Threading.Tasks.Task'
```

To simplify this code, we might introduce using statement to import the namespaces `System.IO` and `System.Threading.Tasks`. This means we can refer to each type in it's smallest format:

```
using System.IO;
using System.Threading.Tasks;

FileInfo fileInfo;
var myTask = Task.Run();
```

By adding `using` statements to import the namespaces, our code becomes simpler as each type usage no longer needs to be fully qualified. This makes our code easier to read and maintain!

When writing code, it's likely we'll need to convert a qualified type into it's simplier format and add a using statement to import the namespace that contains that type.

To help accomplish this, we can use MFractors simplify qualified types refactorings.

## Using the Code Action

To use the `Simplify Qualified Type` code action, locate a qualified type reference in C# and press `Alt+Return` or right click and choose `Quick Fix`. In the context menu that opens, select `Simplify qualified type and introduce usings`.

![Invoking the Simplify All Qualified Types Code Action from the Quick Fix or Keyboard Shortcut](/img/csharp/code-actions/simplify-qualified-type-01.png)

This will introduce a using statement to import the types namespace and simplify the existing type reference to just its name:

![The result of a simplify qualified type code action](/img/csharp/code-actions/simplify-qualified-type-02.png)

## The Simplify Types Wizard

In addition to the `Simplify Qualified Type` code action, you can use the `Simplify All Qualified Types In File` code action to simplify all qualified types in the current file.

This code action converts all qualified types to their simplest forms and introduces usings for all required namespaces.

To use the `Simplify Qualified Type` code action, locate a qualified type reference in C# and press `Alt+Return` or right click and choose `Quick Fix`. In the context menu that opens, select `Simplify all qualified types in this file`.

![Invoking the Simplify All Qualified Types Code Action from the Quick Fix or Keyboard Shortcut](/img/csharp/code-actions/simplify-all-qualified-types-01.png)

This will launch the `Simplify Types` dialog, showing you what the simplified file will look like:

![The simplify types wizard](/img/csharp/code-actions/simplify-all-qualified-types-02.png)

To apply the simplified code, press the **Apply** button.
