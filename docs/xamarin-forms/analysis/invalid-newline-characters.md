!!! quote "Code inspections to spot C# style newlines used in XAML"

## Introduction

When initialising properties in XAML, we can use inline string values for properties such as labels. Sometimes we will need to create a line-break in these strings and we often enter the C# `\n` character to do so.

In XAML, however, we need to *escape* newline characters with the `&#10;` character sequence. As the escape sequence is difficult to remember, it is common to accidentally use C# newlines and cause rendering issues.

## Invalid Newline Detection

MFractor will inspect string literal in your XAML and check for C# style newlines. If you have used a C# newline, `\n`, MFractor will provide a warning that they should be escaped:

![C# Style newline analysis](/img/xamarin-forms/newline-analysis.png)

## Correcting Invalid Newlines

When MFractor detects C# style newlines, you can also use the **Escape newline characters** code fix to change all occurrences of `\n` to `&#10;`:

![C# Style newline code fix](/img/xamarin-forms/newline-code-fix.png)
