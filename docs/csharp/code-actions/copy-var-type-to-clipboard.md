!!! quote "Select the span of a string literal in the C# code editor"

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

When editing a string within C# code, sometimes you would
To make solve this problem, MFractor includes the `Locate in solution explorer` code action to locate the project file for a class, struct or interface declaration.

## Using Locate In Solution Explorer

To use the code action, locate a string literal and press `Alt+Return` or right click and select `Quick Fix`. In the menu that opens, choose `Select string span`.

![Invoking the Locate In Solution Explorer from the Quick Fix  or Keyboard Shortcut](/img/csharp/code-actions/locate-in-explorer-01.png)

MFractor will then locate the project file that owns that type declaration in the solution explorer and expands the project tree to reveal the file.

![The result of the locate in solution explorer code action](/img/csharp/code-actions/locate-in-explorer-02.png)

The `Locate declaration in solution explorer` supports locating the following syntax elements:

 * Classes
 * Structs
 * Interfaces
