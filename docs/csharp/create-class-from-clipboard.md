!!! quote "Generate a new class using the contents of the clipboard"

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

When working as developers, we often need to add a class copied into the clipboard into our code base.

This classes contents could come from a wide range of sources but some common ones are:

 * An answer from StackOverflow.
 * Some code from on Github or CodeProject.
 * Code from an online code-gen tool like [QuickType](https://quicktype.io/) or [IconFont2Code](https://andreinitescu.github.io/IconFont2Code/).
 * Another one of our code bases.

Let's consider a common example, that we are using a class from an answer on StackOverflow. You discover an answer with a class that solves your problem and now you would like add it to your project.

To add the class to your code base, you would do something like so:

  * Copy the code to the clipboard.
  * Open your project and create a new file.
  * Paste the class into the new file.
  * Rename the file name to match the class name.
  * Cleanup the namespace to match the folder path.

This involves a lot of steps and a lot of manual cleanup work, making it error prone and tedius.

To simplify this process, MFractor includes the `Add Class Using Clipboard` tool to make this easier. This tool is very useful when copying code from Github, StackOverflow or other code bases. (Be honest, we all do it).

We can use `Add Class Using Clipboard` to create a new class using the clipboards content; it will automatically detect the file name based on the clipboards class and also correct or create the namespace based on project and folder you are creating it from

## Creating A Class From Clipboard

To use the `Create Class From Clipboard` tool, copy a valid C# class (with or without it's namespace and usings) to the clipboard.

Next, right click on a project or project folder and beneath the **Add** menu, choose the **Add Class Using Clipboard**

![Accessing the create class from clipboard tool](/img/csharp/create-class-from-clipboard-1.png)

Next

![Using the create class from clipboard tool](/img/csharp/create-class-from-clipboard-2.png)


### Automatic Name Detection

When

### Automatic Namespace Creation

### Automatic Namespace Correction
