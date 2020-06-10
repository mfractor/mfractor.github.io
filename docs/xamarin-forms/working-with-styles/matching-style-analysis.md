!!! quote "Inspects XAML elements that do not have a style applied and, if possible, matches them to an available style that targets the element type and also applies the same properties."

## Introduction

Styles are a core building block of complex UI applications in Xamarin.Forms. They allow the creation of specifications that can be easily applied to common visual components. Although being very useful and simple to use, styles can become hard to track and manage overtime.

This code analysis aids in managing the complexity of styles by inspecting elements that do not have a style applied and, if possible, matching them to an available style that targets the element type and also applying the same properties.

## Matching Style Detection

The steps to find a matching style are:

* Check if the element has any attributes declared
* Check if an exising style attribute hasn't been declared

If both predicates are true, MFractor will load a list of the styles declared locally or globally that can be applied to that Target Type, which includes not just the type itself, but any of it's ancestor types.

Then, for each of the styles, MFractor will check if the declared attributes matches the setters of the style, and also if the values matches. In that case the style is identified as a match, and the code analysis presents a warning to indicate the user an available style that can be applied to that element.

## Applying A Matching style

When MFractor Code Analysis identify an element that may be simplified by replacing the property declarations with an existing style, it will add yellow squiggles on the bottom of the component to indicate the available refactoring.

![The code analysis tool highlighting a possible fix](/img/xamarin-forms/style-detection-code-analysis.png)

Right-click on the element and on the `Fix` menu an option should appear as `Apply style 'styleName'`:

![How to Apply the code analysis](/img/xamarin-forms/style-detection-apply.gif)

Applying the fix will replace all the attributes declared in the property to a single attribute `Style` referecing the matching style.

## Disabling This Code Analyser

The matching style code analysis can be disabled on MFractor settings. Open the Visual Studio Preferences and on the **Code Analysis** on the MFractor section of the preferences pages, search for `MF1082`:

![Disabling the Matching Style Code Analysis on the Preferences of MFractor](/img/xamarin-forms/matching-style-disable.png)

This is code of the analyzer that implements this feature, and is identified by the `Element Can Use Available Styler (MF1082)` name. Click on the checkbox to enable or disable it.
