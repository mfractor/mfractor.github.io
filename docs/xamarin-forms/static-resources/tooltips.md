!!! quote "Preview the result of a static resource expression"

## Introduction

## Previewing General Resources

When you hover over a static resource expression, MFractor will render an XML preview of that static resource.

![Static resource tooltips](/img/xamarin-forms/resource-tooltips.png)

Static resource tooltips will work for all resource expressions that can be resolved.

## Previewing Colors

When you hover over a static resource expression that returns a `Color`, MFractor will render a preview of the color:

![Color resource tooltips](/img/xamarin-forms/color-resource-tooltips.png)

Color resource tooltips are useful as they allow you to visually preview what a color

## Previewing Styles

If you hover over a static resource expression that returns a `Style`, MFractor will render an XML preview of that style:

![Style tooltips](/img/xamarin-forms/style-tooltips.png)

Style tooltips will include the following information:

 * Each `Setter` included in the style.
 * The x:Key of that style.
 * If the style has a parent, this inheritance is also included.
