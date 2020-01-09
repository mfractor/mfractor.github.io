!!! quote "Quickly convert a string literal to a interpolated string"

## Introduction

When working with strings in C#, it's common to replace string literal with interpolated strings to simplify string concatenation.

To speed this up, MFractor includes the `To Interpolated String` code action that transforms a string literal into an interpolated string.

## Using Convert To Interpolated String

To use the `Convert To Interpolated String` code action, place the cursor over a string literal and press `Alt+Return` or right click and select `Quick Fix`. In the menu that opens, choose `To Interpolated String`.

![Invoking the To Interpolated String from the Quick Fix  or Keyboard Shortcut](/img/csharp/code-actions/to-interpolated-string-01.png)

MFractor will transform the string literal into an interpolated string, placing a `$` before the string literal.

![The result of the To Interpolated String code action](/img/csharp/code-actions/to-interpolated-string-02.png)
