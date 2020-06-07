!!! quote "Locate the project file in the solution pad for a given type declaration"

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

When browsing a code base in Visual Studio, it's common to need to select the current project file in the solution explorer to use the right click context actions.

However, if we have been working for a while, it's likely the current project file is hidden from view and locating it requires us to manually find it.

To make solve this problem, MFractor includes the `Locate in solution explorer` code action to locate the project file for a class, struct or interface declaration.

## Using The Code Action

To use the code action, locate a type declaration (such as a class or interface) and press `Alt+Return` or right click and select `Quick Fix`. In the menu that opens, choose `Locate declaration in solution explorer`.

![Invoking the Locate In Solution Explorer from the Quick Fix  or Keyboard Shortcut](/img/csharp/code-actions/locate-in-explorer-01.png)

MFractor will then locate the project file that owns that type declaration in the solution explorer and expands the project tree to reveal the file.

![The result of the locate in solution explorer code action](/img/csharp/code-actions/locate-in-explorer-02.png)

The `Locate declaration in solution explorer` supports locating the following syntax elements:

 * Classes
 * Structs
 * Interfaces
