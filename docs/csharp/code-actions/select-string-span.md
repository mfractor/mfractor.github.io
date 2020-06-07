!!! quote "Select the span of a string literal in the C# code editor"

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

When editing a string within C# code, sometimes you might need to copy the inner contents of a string literal to the clipboard. The standard keyboard shortcuts in Visual Studio allow selection of string parts by character, word or line, however, not by the string syntax element.

To make it easier to select the inner contents of a string solve, MFractor includes the `Select string span` code action.

## Using The Code Action

To use the code action, locate a string literal and press `Alt+Return` or right click and select `Quick Fix`. In the menu that opens, choose `Select string span`.

![Invoking the Select String Span from the Quick Fix or Keyboard Shortcut](/img/csharp/code-actions/select-string-span.png)

MFractor will then set the editors selection to the inner bounds of the string literal.

![The result of the Select String Span code action](/img/csharp/code-actions/select-string-span-result.png)
