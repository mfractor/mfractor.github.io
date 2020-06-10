!!! quote "Code analysers that inspect usages of Style's and spot a variety of common issues"

## Introduction

Styles are one of the most powerful building blocks in Xamarin.Forms for crafting clean, maintainable XAML code.

Using styles, we can group initialise a set of properties with values for an element into reusable collection. This allows us to ensure a consistent user interface and organises the maintenance of a visual appearance into a single place.

A style is composed of the following syntax structures:

 * The `Style` tag declares the style.
 * The `TargetType` attribute specifies the type that the style applies to.
 * The `x:Key` declares a resource key we can use to lookup this style. If no `x:Key` is defined, the style is *implicit* and is automatically applied to all elements matching `TargetType` in the scope.
 * The `BasedOn` and `BaseKey`
 * The inner `Setter` element(s) targets a `Property` on the specified `TargetType` and initialises it with a `Value`.

Let's consider the following code:

```
<Style x:Key="TitleLabelStyle" TargetType="Label">
  <Setter Property="FontSize" Value="Large"/>
  <Setter Property="FontAttributes" Value="Bold"/>
  <Setter Property="TextColor" Value="{StaticResource AccentOne}"/
</Style>
```

We would then apply this style using a `StaticResource` expression:

```
<Label Style="{StaticResource TitleLabelStyle}"/>
```

The `Label` will automatically apply the `FontSize="Large"`, `FontAttributes="Bold"` and `TextColor="TextColor"` properties as specified by the `TitleLabelStyle` style.

Styles are a powerful way to orba

MFractor provides many code inspections and fixes that help make working with styles much easier.

## Style Is Missing TargetType

When you declare a style, it must include a `TargetType` attribute that specifies type the style applies to. Styles defined without a target type are invalid and will cause a compiler error.

MFractor will detect this and notify you when a style does not have the `TargetType` attribute:

![Detecting a style that does not include the TargetType attribute](/img/xamarin-forms/style-missing-target-type.png)

MFractor will also offer a code fix to add the missing `TargetType` attribute.

## Style Has Duplicate Setters

When declaring new `Style`, each property defined by a `Setter` only needs to be declared once.

MFractor inspects a styles `Setter`'s and verifies that only one setter per property is applied:

![Detecting duplicate style setters](/img/xamarin-forms/style-duplicate-setter-analysis.png)

## Static Resource Style Target Type Is Incompatible

When using a `Style`, the `TargetType` of that style must be compatible with the type of the element it is applied onto. If the types are not compatible, your app will crash at runtime.

MFractor inspects the `TargetType` of a styles applied onto elements and verifies that they are type-compatible:

![Detecting that a styles target type is incompatible](/img/xamarin-forms/style-missing-target-type.png)

## Style TargetType Does Not Match BasedOn TargetType

When using the `BasedOn` and `BaseResourceKey` to create style inheritance, MFactor will inspect the parent styles `TargetType` and make sure that the types are compatible.

## Property Setter Does Not Exist In Style TargetType

When creating a new style and configuring its `Setters`, MFractor will inspect the value provided to the `Property` attribute and verify that they exist on the `TargetType`:

![Detecting that a setter property is unknown in the target type](/img/xamarin-forms/style-unknown-target-type-property.png)

## Property Value Is Already Applied By Style

When a style is applied onto an element, and that element initalises a property to the same value as initialised by the style, MFractor will provide a warning that the property initialise is redundant:

![Detecting that a styles ](/img/xamarin-forms/style-missing-target-type.png)

MFractor will also offer code fixes to remove all property initialisations that are already set to the same value by the style.

## Unknown Style Detection

MFractor will inspect `StaticResource` expressions and verify that the referenced style exists within the application.

MFractor will offer a code-fix to generate a new style when a missing style is detected. Triggering this code fix will launch the style creation tool.

Additionally, if the style name closely matches a known static resource, MFractor will offer to replace the invalid name with an autocorrection.
